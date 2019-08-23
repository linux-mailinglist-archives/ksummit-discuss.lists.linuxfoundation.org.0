Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E10F9B6ED
	for <lists@lfdr.de>; Fri, 23 Aug 2019 21:17:29 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 66D80F4F;
	Fri, 23 Aug 2019 19:17:18 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 17035DB2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 19:17:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 758A17FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 19:17:15 +0000 (UTC)
Received: from p5de0b6c5.dip0.t-ipconnect.de ([93.224.182.197] helo=nanos)
	by Galois.linutronix.de with esmtpsa
	(TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256) (Exim 4.80)
	(envelope-from <tglx@linutronix.de>)
	id 1i1F3g-0007lb-Ns; Fri, 23 Aug 2019 21:17:12 +0200
Date: Fri, 23 Aug 2019 21:17:04 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
In-Reply-To: <20190823164602.GB112509@dtor-ws>
Message-ID: <alpine.DEB.2.21.1908232108580.1939@nanos.tec.linutronix.de>
References: <CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
	<20190823161947.GA112509@dtor-ws>
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<20190823164602.GB112509@dtor-ws>
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
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
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

On Fri, 23 Aug 2019, Dmitry Torokhov wrote:
> On Fri, Aug 23, 2019 at 12:35:03PM -0400, Joel Fernandes wrote:
> > On Fri, Aug 23, 2019 at 12:19 PM Dmitry Torokhov
> > <dmitry.torokhov@gmail.com> wrote:
> > > On Fri, Aug 23, 2019 at 05:48:55PM +0200, Thomas Gleixner wrote:
> > > >
> > > > Yes, it's work for the submitter, but it's always work if the submitter
> > > > wants to have a proper trace.
> > >
> > > Here is where I disagree with you. As a patch submitter, I frankly could
> > > not care less about proper trace, history, etc. I might be putting cover
> > 
> > But that is exactly what the problem statement is. Doug does care
> > about tracing/history and wants that to be more robust etc.
> 
> Doug here is not a submitter ;)

Well, if he wants the changeids there then submitters need to insert them,
right? So it's work no matter what unless it can be automated with tooling.

Guess what, how I inject the Link to the coverletter of the previous
version of a patch series? Definitely not manualy. 

So yes, if you want proper traceability then all involved people have to do
something. If it can be done with tooling fully automated, fine. If not,
it's work whatever method you chose.

We cannot enforce the changeid thing in the community, but Google can
inforce it internally. So we give them a way to be traceable w/o plastering
the kernel logs with potentially useless information.

That said, I'm fine with a Link as well, as long as it is public
accessible. If not, then the coverletter/discard area is the place to use.

Thanks,

	tglx
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
