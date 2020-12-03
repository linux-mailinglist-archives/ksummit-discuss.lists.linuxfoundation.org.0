Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1B12CD296
	for <lists@lfdr.de>; Thu,  3 Dec 2020 10:35:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A61B82E1D9;
	Thu,  3 Dec 2020 09:35:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ldj6NqmA3dmY; Thu,  3 Dec 2020 09:35:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id EC66A2041D;
	Thu,  3 Dec 2020 09:35:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B7C7CC163C;
	Thu,  3 Dec 2020 09:35:08 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DA0CBC0FA7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 09:35:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 955128773F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 09:35:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VXQVhMw1+Oof
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 09:35:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0CC6D8773E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 09:35:05 +0000 (UTC)
Date: Thu, 3 Dec 2020 11:34:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1606988104;
 bh=h6V2Z6Ay9Kb533oQABEcHkhu3t7oaDyji1uVKbVJrAQ=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=E0kJZy8BcRUyY3dGn020pigVwcYCSFTBxzvt4Boj5HU+KgOcu45K1fMFIvZEdADT+
 Y9aBTqNogF1wnOl6seDkkkFQPR3jdr8KX3LPTK31hiBV+zzWSmyFTqrTo//+BiAccN
 f883ZgarKaGGUP+4hz9PEUDVgCkwHWHpNf+YiLNmq9X/7oj4lowwXAkqOndKCTHC//
 /oPsJRIPB/LIP+f36t6QAeyzi0lWjtKPtv2pIxwL9Dsz9sDF/1iM4zwauA2l1Yq8tV
 KCnZzlAM9Bm0uELMu4kC2gPWO9obIMJL8nKVYFPkF/sn34ZpfjIkws0+YQraf5vEv4
 2udRwrj4Q56TQ==
From: Leon Romanovsky <leon@kernel.org>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20201203093458.GA16543@unreal>
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
 <CAPcyv4jDHMt4PpR2Htvw27rn5i5sCkwXtoZH-rFbtG8Hj7x1sg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPcyv4jDHMt4PpR2Htvw27rn5i5sCkwXtoZH-rFbtG8Hj7x1sg@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Vlastimil Babka <vbabka@suse.cz>
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

On Wed, Dec 02, 2020 at 08:02:27PM -0800, Dan Williams wrote:
> On Wed, Dec 2, 2020 at 3:44 PM Vlastimil Babka <vbabka@suse.cz> wrote:
> >
> > Hi,
> >
> > there was a bit of debate on Twitter about this, so I thought I would bring it
> > here. Imagine a scenario where patch sits as a commit in -next and there's a bug
> > report or fix, possibly by a bot or with some static analysis. The maintainer
> > decides to fold it into the original patch, which makes sense for e.g.
> > bisectability. But there seem to be no clear rules about attribution in this
> > case, which looks like there should be, probably in
> > Documentation/maintainer/modifying-patches.rst
> >
> > The original bug fix might include a From: $author, a Reported-by: (e.g.
> > syzbot), Fixes: $next-commit, some tag such as Addresses-Coverity: to credit the
> > static analysis tool, and an SoB. After folding, all that's left might be a line
> > as "include fix from $author" in the SoB area. This is a loss of
> > metadata/attribution just due to folding, and might make contributors unhappy.
> > Had they sent the fix after the original commit was mainline and immutable, all
> > the info above would "survive" in the form of new commit.
> >
> > So I think we could decide what the proper format would be, and document it
> > properly. I personally wouldn't mind just copy/pasting the whole commit message
> > of the fix (with just a short issue description, no need to include stacktraces
> > etc if the fix is folded), we could just standardize where, and how to delimit
> > it from the main commit message. If it's a report (person or bot) of a bug that
> > the main author then fixed, preserve the Reported-by in the same way (making
> > clear it's not a Reported-By for the "main thing" addressed by the commit).
> >
> > In the debate one less verbose alternatve proposed was a SoB with comment
> > describing it's for a fix and not whole patch, as some see SoB as the main mark
> > of contribution, that can be easily found and counted etc. I'm not so sure about
> > it myself, as AFAIK SoB is mainly a DCO thing, and for a maintainer it means
> > something else ("passed through my tree") than for a patch author. And this
> > approach would still lose the other tags.
> >
> > Thoughts?
>
> How about a convention to add a Reported-by: and a Link: to the
> incremental fixup discussion? It's just polite to credit helpful
> feedback, not sure it needs a more formal process.

Maybe "Fixup-Reported-by:" and "Fixup-Link:"?

Thanks
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
