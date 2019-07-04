Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 607905F9F4
	for <lists@lfdr.de>; Thu,  4 Jul 2019 16:22:35 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C576F1186;
	Thu,  4 Jul 2019 14:22:21 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 100E5C00
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Jul 2019 14:22:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A4768881
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Jul 2019 14:22:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id A6B218EE1E1; 
	Thu,  4 Jul 2019 07:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
	s=20151216; t=1562250138;
	bh=TllnK1Z4GsSsRx4MgawML64v4SVULV/5GeX5IOrNkq8=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=JnUshMy/tkswNC0aVOYsiFTQOJf+vd505Mk43axFMBpwuNTLdsi6E23+p9zW6k7Mp
	DcETlUL0YRTCLtg++8VIVJmOMG4CyXYm45IE+u48HeNq4UC+B/RryEKw310mh8uTHI
	l4xadY0aY84cd19aU9hi71WCSHqgubYKy0dqI+hM=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id SZxBKpaHryJ9; Thu,  4 Jul 2019 07:22:17 -0700 (PDT)
Received: from jarvis.lan (unknown [50.35.68.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 5FC0A8EE0C3;
	Thu,  4 Jul 2019 07:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
	s=20151216; t=1562250137;
	bh=TllnK1Z4GsSsRx4MgawML64v4SVULV/5GeX5IOrNkq8=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=Tw4VLC4ui1w2wNwc+O9NAUbiPhNDP4alz5a8G1C36anDf7JUggAHhKyGtKrSPMe4/
	vd6hObF241Tv2FgEUj7CVQpUd/FS8tNkfzOmXzm836EvT713JaeCfEbMUgiAoxkbzi
	K0WnfJZRpKmKM7BtSGGQ7Avaljj9w895j8PbB1l8=
Message-ID: <1562250136.3187.3.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner
	<tglx@linutronix.de>,  Takashi Iwai <tiwai@suse.de>
Date: Thu, 04 Jul 2019 07:22:16 -0700
In-Reply-To: <87y31eov1l.fsf@concordia.ellerman.id.au>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<s5hzhm0q3p1.wl-tiwai@suse.de>
	<alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
	<87y31eov1l.fsf@concordia.ellerman.id.au>
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

On Thu, 2019-07-04 at 22:15 +1000, Michael Ellerman wrote:
> Thomas Gleixner <tglx@linutronix.de> writes:
> > On Sat, 29 Jun 2019, Takashi Iwai wrote:
> > > On Fri, 28 Jun 2019 22:51:03 +0200,
> > > Luck, Tony wrote:
> > > > That captures for posterity the useful information without
> > > > bulking up the commit log with the blow-by-blow deltas of
> > > > how the patch series evolved across 27 versions submitted
> > > > to the mailing list.
> > > 
> > > Agreed.  And I'm thinking whether we may have come consistent tag
> > > for following the post discussions on ML archive.  Then the
> > > detailed
> > > descriptions can be dropped from the changelog, and readers can
> > > still
> > > follow easily.  e.g. the patch version change can be simply a
> > > reference URL.
> > 
> > This tag exists today:
> > 
> >      Link: https://lore.kernel.org/lkml/MESSAGE-ID
> > 
> > my 'grab patches from list' scripts insert that tag automatically
> > and it's part of the commit changelog in git. That allows you to
> > just jump to the mail archive of the merged submission.
> 
> If you've got the link back to the mailing list archive, do you also
> need Cc: tags in the change log?

Cc: tags are another git artefact.  They're how you tell git-send-email 
where to send copies of the patch for review or notice, but they don't
really provide any intrinsic historical value.

Perhaps we should alter the convention and say that if you're using
git-send-email and need a cc: list, then you should put all the cc tags
below the cutoff, say always at the bottom.  That way the version
information would be first, which is more important for the review, the
sender would preserve and show the cc list and it would be eliminated
on git-am.  Any cc tags that were necessary (like cc: stable) could go
above the cutoff.

James

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
