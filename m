Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D34A9E9E3
	for <lists@lfdr.de>; Tue, 27 Aug 2019 15:48:53 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 22D3B157C;
	Tue, 27 Aug 2019 13:48:42 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 083551573
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 13:48:40 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 805A242D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 13:48:39 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
	[83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C4A24217F5;
	Tue, 27 Aug 2019 13:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1566913719;
	bh=3+rTuVgFo2ckXMlCS/+8/EeMSX8uvTnruV4wJSgftKM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oleAmtrzcayF45eQceq2GEO9LiQe8FcxMbKeXKMxX8VB6y6xgx0cwXjlBuDmPFv2V
	ryxV3euyhipeTNZAlRJ2c6CPwdWLZ2wDDXY89vwXEBq2Hh5BsYxa7kFTGAywk85RIO
	QLtwTzwOcgYIHE6rY9sf2ZUGN/K8R+JE5NTHgh48=
Date: Tue, 27 Aug 2019 15:48:36 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dmitry Vyukov <dvyukov@google.com>
Message-ID: <20190827134836.GB25038@kroah.com>
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
	<CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
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

On Tue, Aug 27, 2019 at 06:24:36AM -0700, Dmitry Vyukov wrote:
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
> into commit? As far as I understand this is not possible with the
> current kernel tooling, as this aspect is not under control of any
> unified tooling.
> I see different maintainers use links to different archive web sites.
> Also sometimes Link is present for other reasons (e.g. link to bug
> report).
> The link will need to be added by every developer (rather than
> maintainer) so that it's available before the change is committed
> anywhere.

For subsystems I maintain, I am already adding the Link: tag to
lore.kernel.org with the message id in it.  That is automatically added
by my scripts.

> Though, most of these are problems for any other change identification scheme...

Note, we have 4000+ developers every year, it's hard enough to get them
all to agree on major things, let alone crazy stuff like this :)

thanks,

greg k-h
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
