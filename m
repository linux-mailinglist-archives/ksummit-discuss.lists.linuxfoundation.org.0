Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F299EA67
	for <lists@lfdr.de>; Tue, 27 Aug 2019 16:07:18 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B5DE715B3;
	Tue, 27 Aug 2019 14:07:02 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 11AEA15AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 14:07:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8EDC7710
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 14:06:59 +0000 (UTC)
Received: from p5de0b6c5.dip0.t-ipconnect.de ([93.224.182.197] helo=nanos)
	by Galois.linutronix.de with esmtpsa
	(TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256) (Exim 4.80)
	(envelope-from <tglx@linutronix.de>)
	id 1i2c7c-0007cj-6j; Tue, 27 Aug 2019 16:06:56 +0200
Date: Tue, 27 Aug 2019 16:06:55 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Dmitry Vyukov <dvyukov@google.com>
In-Reply-To: <CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1908271603260.1939@nanos.tec.linutronix.de>
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
	<CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
	SHORTCIRCUIT=-0.0001
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Tue, 27 Aug 2019, Dmitry Vyukov wrote:

> On Mon, Aug 26, 2019 at 11:06 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> >
> > On Mon, 26 Aug 2019, Dmitry Vyukov wrote:
> > > A somewhat related point re UUID/Change-ID.
> > > For syzbot (or any other bug tracking system) we want to associate
> > > bugs with fixes. It turned out there is no good identity of a change
> > > that we could use. Commit hash is an obvious first thing to consider,
> > > but (1) it changes in linux-next, (2) sometimes the change is not
> > > committed yet when we do the association, (3) it is different when
> > > backported to LTS (so not possible to say if a fix is in that stable
> > > tree or not).
> > > We decided to use commit subject, which works to some degree, but also
> > > has problems: (1) not necessary unique, (2) sometimes people change
> > > subject during backporting (e.g. prepend some prefix), (3) has all the
> > > same problems of email clients messing with text (e.g. I can't issue
> > > #syz fix command for loo long commit subjects with my email client).
> > > Some real UUID/Change-ID would solve all of these problems by giving
> > > us capability to refer to changes rather than a commit in a particular
> > > tree only.
> >
> > If we adopt the Link: ..../$MSG tag widely then you have a UUID.
> 
> Is there a way to ensure that everybody will generate right IDs
> (ChangeID-Version) and then a link in canonical form will be included

What? You want to enforce that on every single person on the planet who
submits patches for the kernel? Good luck with that.


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
