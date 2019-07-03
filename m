Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4935EF73
	for <lists@lfdr.de>; Thu,  4 Jul 2019 01:04:13 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 637BED2E;
	Wed,  3 Jul 2019 23:04:00 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9C313CD3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 23:03:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1B81A87C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 23:03:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 66FC68EE1DD; 
	Wed,  3 Jul 2019 16:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
	s=20151216; t=1562195037;
	bh=FNst1HSxy1k6YpvVRJAGxi6muUrLuXYtsauDb4drjUc=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=Wm1RTITQj4kFuR686OoBegzWa+wG24bsJGWxF4oxOIoIg7ITokVIbvbj/kSY3B9iR
	+ZoBpZ7HbTze61xtNerJWvsEwkvE2dWxqb5L5g0ungASxfLJ+2gitIvQI441HRYti5
	geYMRRx4Ki8dd78OjH9LXSr5BtQUb4/FZ04h2Od4=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id rFQJZ6amhRFe; Wed,  3 Jul 2019 16:03:57 -0700 (PDT)
Received: from jarvis.lan (unknown [50.35.68.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id E07888EE0D5;
	Wed,  3 Jul 2019 16:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
	s=20151216; t=1562195037;
	bh=FNst1HSxy1k6YpvVRJAGxi6muUrLuXYtsauDb4drjUc=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=Wm1RTITQj4kFuR686OoBegzWa+wG24bsJGWxF4oxOIoIg7ITokVIbvbj/kSY3B9iR
	+ZoBpZ7HbTze61xtNerJWvsEwkvE2dWxqb5L5g0ungASxfLJ+2gitIvQI441HRYti5
	geYMRRx4Ki8dd78OjH9LXSr5BtQUb4/FZ04h2Od4=
Message-ID: <1562195036.2768.4.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Theodore Ts'o
	<tytso@mit.edu>
Date: Wed, 03 Jul 2019 16:03:56 -0700
In-Reply-To: <20190703085620.GA5007@pendragon.ideasonboard.com>
References: <alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
	<1562080257.3321.19.camel@HansenPartnership.com>
	<1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<20190703085620.GA5007@pendragon.ideasonboard.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Wed, 2019-07-03 at 11:56 +0300, Laurent Pinchart wrote:
> On Tue, Jul 02, 2019 at 06:43:47PM -0400, Theodore Ts'o wrote:
> > On Tue, Jul 02, 2019 at 03:26:48PM -0700, James Bottomley wrote:
> > > git is our upstream for version control and our upstream has
> > > already
> > > had this as a feature since 2014.  Trying to go to upstream  5
> > > years
> > > later and ask them to change it is likely going to be a
> > > singularly
> > > unsuccessful exercise, plus even in the unlikely event we can
> > > work out
> > > how to do it compatibly and without causing confusion and
> > > upstream said
> > > yes it would take another few years to propagate.
> > 
> > If we really want to use the Link: header, we should be able to do
> > this without requiring any changes to git.
> > 
> > Step 1)   git config am.messageid true
> > Step 2)   Write and install a .git/hooks/applypatch-msg script
> > which
> > 	  looks for Message-Id: and transmogrifies that line to a
> > 	  Link: trailer, using the lore.kernel.org URL template
> > Step 3)   Document this in Documentation/process.  For bonus points
> > 	  create a script which automatically sets up the user's git
> > 	  configuration by setting up am.messageid config and
> > 	  installing the hook file.
> > Step 4)   Profit
> 
> I may have missed the obvious, but while this should work great for
> patches applied with git-am, what's the expected workflow for patches
> written by the author of a pull request ? I certainly post my own
> patches for review on mailing lists, but I don't fetch them back from
> the list before sending a pull request. Do we want to move towards a
> model where maintainers should retrieve their own patches from the
> lists (or from patchwork) ?

I always apply from the list.  Apart from the obvious benefit of
getting others to review and not giving the impression of a favourite
path into the tree, I do it because as I construct patches and rework
them I actually build the version information into the change log using
rebase (with a --- separating it from the main commit message).  This
is so I can send the emails directly from my tree without having to add
the version change information but it does mean the only way I lose the
version history from my patches when they go into the tree for real is
by doing an am apply from the list.

James


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
