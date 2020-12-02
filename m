Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 343A12CCAA2
	for <lists@lfdr.de>; Thu,  3 Dec 2020 00:44:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BC9D18737F;
	Wed,  2 Dec 2020 23:43:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tN480wHAKWVv; Wed,  2 Dec 2020 23:43:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 28ACA87376;
	Wed,  2 Dec 2020 23:43:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E68A8C0FA7;
	Wed,  2 Dec 2020 23:43:58 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6BF57C0FA7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  2 Dec 2020 23:43:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5A69086B77
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  2 Dec 2020 23:43:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tRGzxCuXgOTN
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  2 Dec 2020 23:43:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4BC1F86B03
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  2 Dec 2020 23:43:55 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id E9B8EAB63;
 Wed,  2 Dec 2020 23:43:52 +0000 (UTC)
From: Vlastimil Babka <vbabka@suse.cz>
To: "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>
Message-ID: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
Date: Thu, 3 Dec 2020 00:43:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
Content-Language: en-US
Cc: LKML <linux-kernel@vger.kernel.org>
Subject: [Ksummit-discuss] crediting bug reports and fixes folded into
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

Hi,

there was a bit of debate on Twitter about this, so I thought I would bring it
here. Imagine a scenario where patch sits as a commit in -next and there's a bug
report or fix, possibly by a bot or with some static analysis. The maintainer
decides to fold it into the original patch, which makes sense for e.g.
bisectability. But there seem to be no clear rules about attribution in this
case, which looks like there should be, probably in
Documentation/maintainer/modifying-patches.rst

The original bug fix might include a From: $author, a Reported-by: (e.g.
syzbot), Fixes: $next-commit, some tag such as Addresses-Coverity: to credit the
static analysis tool, and an SoB. After folding, all that's left might be a line
as "include fix from $author" in the SoB area. This is a loss of
metadata/attribution just due to folding, and might make contributors unhappy.
Had they sent the fix after the original commit was mainline and immutable, all
the info above would "survive" in the form of new commit.

So I think we could decide what the proper format would be, and document it
properly. I personally wouldn't mind just copy/pasting the whole commit message
of the fix (with just a short issue description, no need to include stacktraces
etc if the fix is folded), we could just standardize where, and how to delimit
it from the main commit message. If it's a report (person or bot) of a bug that
the main author then fixed, preserve the Reported-by in the same way (making
clear it's not a Reported-By for the "main thing" addressed by the commit).

In the debate one less verbose alternatve proposed was a SoB with comment
describing it's for a fix and not whole patch, as some see SoB as the main mark
of contribution, that can be easily found and counted etc. I'm not so sure about
it myself, as AFAIK SoB is mainly a DCO thing, and for a maintainer it means
something else ("passed through my tree") than for a patch author. And this
approach would still lose the other tags.

Thoughts?
Vlastimil
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
