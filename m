Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 554542CD848
	for <lists@lfdr.de>; Thu,  3 Dec 2020 14:58:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6398187C15;
	Thu,  3 Dec 2020 13:58:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dPAj4II8WTo6; Thu,  3 Dec 2020 13:58:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7673E87C25;
	Thu,  3 Dec 2020 13:58:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 23FB6C163C;
	Thu,  3 Dec 2020 13:58:23 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5A2A7C0FA7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 13:58:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 403BA874D2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 13:58:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rMV71gEuXZ1D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 13:58:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [96.44.175.130])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3E96386D38
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 13:58:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 928DC128074A;
 Thu,  3 Dec 2020 05:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1607003898;
 bh=2e4QVL6oFGBsIaZX31w+Mg071wTO2ua7Y21muJ4Hi3I=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=eq3/hiAvSAZlIM2WTLDZAbxwmU9+teGEQmv447OEzXMBw9lA7GlbtvfOZo5xZsM8n
 1qcWdTBPCWKk9qp/bDDP8cYKl3dDBrcdAIzQjRSgNDCipEIv4O5Fo8F0wcpzsoSEF6
 tUhvoBNxneFp5TIiDHyNcCRVg3BGb4rOpMIf2qjY=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id uG4WwRwZhca0; Thu,  3 Dec 2020 05:58:18 -0800 (PST)
Received: from jarvis.int.hansenpartnership.com (unknown
 [IPv6:2601:600:8280:66d1::527])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 40B4D1280742;
 Thu,  3 Dec 2020 05:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1607003898;
 bh=2e4QVL6oFGBsIaZX31w+Mg071wTO2ua7Y21muJ4Hi3I=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=eq3/hiAvSAZlIM2WTLDZAbxwmU9+teGEQmv447OEzXMBw9lA7GlbtvfOZo5xZsM8n
 1qcWdTBPCWKk9qp/bDDP8cYKl3dDBrcdAIzQjRSgNDCipEIv4O5Fo8F0wcpzsoSEF6
 tUhvoBNxneFp5TIiDHyNcCRVg3BGb4rOpMIf2qjY=
Message-ID: <694039d6e386d999fd74d038cf2627f5b3b0ca71.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Vlastimil Babka <vbabka@suse.cz>, 
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>
Date: Thu, 03 Dec 2020 05:58:17 -0800
In-Reply-To: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Cc: LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] crediting bug reports and fixes folded into
 original patch
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
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
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Thu, 2020-12-03 at 00:43 +0100, Vlastimil Babka wrote:
> Hi,
> 
> there was a bit of debate on Twitter about this, so I thought I would
> bring it here. Imagine a scenario where patch sits as a commit in
> -next and there's a bug report or fix, possibly by a bot or with some
> static analysis. The maintainer decides to fold it into the original
> patch, which makes sense for e.g. bisectability. But there seem to be
> no clear rules about attribution in this case, which looks like there
> should be, probably in
> Documentation/maintainer/modifying-patches.rst
> 
> The original bug fix might include a From: $author, a Reported-by:
> (e.g. syzbot), Fixes: $next-commit, some tag such as Addresses-
> Coverity: to credit the static analysis tool, and an SoB. After
> folding, all that's left might be a line as "include fix from
> $author" in the SoB area. This is a loss of metadata/attribution just
> due to folding, and might make contributors unhappy. Had they sent
> the fix after the original commit was mainline and immutable, all
> the info above would "survive" in the form of new commit.

It has been the case since forever that discussion which improves an
uncommitted patch is only captured in email (which now may be preserved
in a link tag).  Patch updates that come in after the patch is
committed get their own commit.  We've tried to move people away from
counting commits as an indicator of upstream eminence, but it's still a
fact of life that this is what matters to a lot of open source
community managers.  The tension we have is between liking a clean
commit in the tree as opposed to a sequence of commits tracking the
evolution of the patch and this community manager desire to track
patches.

So there are two embedded questions here: firstly, should we be as
wedded to clean history as we are, because showing the evolution would
simply solve this?  Secondly, if we are agreed on clean history, how
can we make engagement via email as important as engagement via commit
for the community managers so the Link tag is enough?  I've got to say
I think trying to add tags to recognize patch evolution is a mistake
and we instead investigate one of the two proposals above.

James


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
