Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E816D5E417
	for <lists@lfdr.de>; Wed,  3 Jul 2019 14:40:15 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D346AFC3;
	Wed,  3 Jul 2019 12:40:03 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5112CF43
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 12:40:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E2DB5837
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 12:39:57 +0000 (UTC)
Received: from localhost (unknown [37.142.3.125])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F10782189E;
	Wed,  3 Jul 2019 12:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1562157597;
	bh=+nGtUWgpBmB+PJf95mkcvR48sH/0VUIatYAubUgomLs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dzzvjuYMDAmO5MjpGz25Febv5iuM/PpOTV2ahd9QP4JC8QmJIGHKymTthFrppMaxm
	AZnblCZbvK/ixd3WYMDb90FD57uSE6G79RvvZa1nRocVB9jgCRIMiVX/pp4OT5lU+m
	a1GVTxZyB5GqgzGrLevWmaGtcw8nmRamK5L9A/l0=
Date: Wed, 3 Jul 2019 15:39:54 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20190703123954.GD4727@mtr-leonro.mtl.com>
References: <1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<20190703085620.GA5007@pendragon.ideasonboard.com>
	<alpine.DEB.2.21.1907031104260.1802@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1907031104260.1802@nanos.tec.linutronix.de>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
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

On Wed, Jul 03, 2019 at 11:12:11AM +0200, Thomas Gleixner wrote:
> On Wed, 3 Jul 2019, Laurent Pinchart wrote:
> > On Tue, Jul 02, 2019 at 06:43:47PM -0400, Theodore Ts'o wrote:
> > > On Tue, Jul 02, 2019 at 03:26:48PM -0700, James Bottomley wrote:
> > > > git is our upstream for version control and our upstream has already
> > > > had this as a feature since 2014.  Trying to go to upstream  5 years
> > > > later and ask them to change it is likely going to be a singularly
> > > > unsuccessful exercise, plus even in the unlikely event we can work out
> > > > how to do it compatibly and without causing confusion and upstream said
> > > > yes it would take another few years to propagate.
> > >
> > > If we really want to use the Link: header, we should be able to do
> > > this without requiring any changes to git.
> > >
> > > Step 1)   git config am.messageid true
> > > Step 2)   Write and install a .git/hooks/applypatch-msg script which
> > > 	  looks for Message-Id: and transmogrifies that line to a
> > > 	  Link: trailer, using the lore.kernel.org URL template
> > > Step 3)   Document this in Documentation/process.  For bonus points
> > > 	  create a script which automatically sets up the user's git
> > > 	  configuration by setting up am.messageid config and
> > > 	  installing the hook file.
> > > Step 4)   Profit
> >
> > I may have missed the obvious, but while this should work great for
> > patches applied with git-am, what's the expected workflow for patches
> > written by the author of a pull request ? I certainly post my own
> > patches for review on mailing lists, but I don't fetch them back from
> > the list before sending a pull request. Do we want to move towards a
> > model where maintainers should retrieve their own patches from the lists
> > (or from patchwork) ?
>
> Yes.
>
> If you just commit, post and then send a pull request later how are you
> dealing with Reviewed-by/Acked-by/Tested-by replies on the list?
>
> Either they do not end up in the changelogs or you have to redo the commits
> anyway. So moving to a always redo from mail/patchwork just unifies the
> workflow.
>
> I'm doing that always because I'm way too lazy to collect the tags from
> replies manually. I just save the whole thread as mbox and let the tools
> sort it out.

My 2 cents,

I'm doing the same for slightly different reason, I want to be 100% sure
that posted and reviewed patch equal to applied. So when it is applicable,
I post my own patches and apply them from mailing list later on to
shared rdma<->netdev branch.

Thanks

>
> Thanks,
>
> 	tglx
>
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
