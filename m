Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 515769B726
	for <lists@lfdr.de>; Fri, 23 Aug 2019 21:38:56 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id ECB95F3E;
	Fri, 23 Aug 2019 19:38:44 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 29357DC8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 19:38:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6D03CE6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 19:38:41 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
	[81.175.216.236])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C584E2B2;
	Fri, 23 Aug 2019 21:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1566589119;
	bh=vDmd0HM2ll7TaUGbf95uca5jPBs3WcUWK6eBfYQhULU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SxcTd/CZl29O1COjytKKnZg5qVfpBgLlmBZHYTn30rHV/VA5yB6INzbsLnvZqRcN2
	+AdOXmeahdmgFUksLhCnjmdXvfG9cB0alvlepXeBIhnmWwcFBaTEHN4XRnFAEx+1OK
	T103nftRHzEhv5CmQDb7jXXl+8lPDOjKrgYni5nc=
Date: Fri, 23 Aug 2019 22:38:32 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20190823193832.GE4791@pendragon.ideasonboard.com>
References: <CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
	<20190823161947.GA112509@dtor-ws>
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<20190823164602.GB112509@dtor-ws>
	<alpine.DEB.2.21.1908232108580.1939@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1908232108580.1939@nanos.tec.linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
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

Hi Thomas,

On Fri, Aug 23, 2019 at 09:17:04PM +0200, Thomas Gleixner wrote:
> On Fri, 23 Aug 2019, Dmitry Torokhov wrote:
> > On Fri, Aug 23, 2019 at 12:35:03PM -0400, Joel Fernandes wrote:
> >> On Fri, Aug 23, 2019 at 12:19 PM Dmitry Torokhov wrote:
> >>> On Fri, Aug 23, 2019 at 05:48:55PM +0200, Thomas Gleixner wrote:
> >>>>
> >>>> Yes, it's work for the submitter, but it's always work if the submitter
> >>>> wants to have a proper trace.
> >>>
> >>> Here is where I disagree with you. As a patch submitter, I frankly could
> >>> not care less about proper trace, history, etc. I might be putting cover
> >> 
> >> But that is exactly what the problem statement is. Doug does care
> >> about tracing/history and wants that to be more robust etc.
> > 
> > Doug here is not a submitter ;)
> 
> Well, if he wants the changeids there then submitters need to insert them,
> right? So it's work no matter what unless it can be automated with tooling.
> 
> Guess what, how I inject the Link to the coverletter of the previous
> version of a patch series? Definitely not manualy. 

Would you be able to share your method for automating this ? I'm sure
many kernel developers could benefit from such automation (both those
who insert links manually now, and those who don't insert links at all
because doing it manually is too tedious).

> So yes, if you want proper traceability then all involved people have to do
> something. If it can be done with tooling fully automated, fine. If not,
> it's work whatever method you chose.
> 
> We cannot enforce the changeid thing in the community, but Google can
> inforce it internally. So we give them a way to be traceable w/o plastering
> the kernel logs with potentially useless information.
> 
> That said, I'm fine with a Link as well, as long as it is public
> accessible. If not, then the coverletter/discard area is the place to use.

-- 
Regards,

Laurent Pinchart
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
