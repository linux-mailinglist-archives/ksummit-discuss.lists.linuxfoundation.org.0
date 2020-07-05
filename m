Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E08B2158E2
	for <lists@lfdr.de>; Mon,  6 Jul 2020 15:55:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9E60E25DBB;
	Mon,  6 Jul 2020 13:55:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zvVCVwN-HZcE; Mon,  6 Jul 2020 13:55:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 2785A25E17;
	Mon,  6 Jul 2020 13:55:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D219FC0893;
	Mon,  6 Jul 2020 13:55:35 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E66C4C016F;
 Sun,  5 Jul 2020 05:08:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CA00E20386;
 Sun,  5 Jul 2020 05:08:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rDgKhCFlwU79; Sun,  5 Jul 2020 05:08:07 +0000 (UTC)
X-Greylist: delayed 00:12:49 by SQLgrey-1.7.6
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from 1wt.eu (wtarreau.pck.nerim.net [62.212.114.60])
 by silver.osuosl.org (Postfix) with ESMTP id EBB042037E;
 Sun,  5 Jul 2020 05:08:06 +0000 (UTC)
Received: (from willy@localhost)
 by pcw.home.local (8.15.2/8.15.2/Submit) id 0654t5TB003005;
 Sun, 5 Jul 2020 06:55:05 +0200
Date: Sun, 5 Jul 2020 06:55:05 +0200
From: Willy Tarreau <w@1wt.eu>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20200705045505.GA2962@1wt.eu>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: Mutt/1.6.1 (2016-04-27)
X-Mailman-Approved-At: Mon, 06 Jul 2020 13:55:33 +0000
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>
Subject: Re: [Ksummit-discuss] [PATCH] CodingStyle: Inclusive Terminology
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

On Sat, Jul 04, 2020 at 01:02:51PM -0700, Dan Williams wrote:
> +Non-inclusive terminology has that same distracting effect which is why
> +it is a style issue for Linux, it injures developer efficiency.

I'm personally thinking that for a non-native speaker it's already
difficult to find the best term to describe something, but having to
apply an extra level of filtering on the found words to figure whether
they are allowed by the language police is even more difficult. *This*
injures developers efficiency. What could improve developers efficiency
is to take care of removing *all* idiomatic or cultural words then. For
example I've been participating to projects using the term "blueprint",
I didn't understand what that meant. It was once explained to me and
given that it had no logical reason for being called this way, I now
forgot. If we follow your reasoning, Such words should be banned for
exactly the same reasons. Same for colors that probably don't mean
anything to those born blind.

For example if in my local culture we eat tomatoes at starters and
apples for dessert, it could be convenient for me to use "tomato" and
"apple" as list elements to name the pointers leading to the beginning
and the end of the list, and it might sound obvious to many people, but
not at all for many others.

Maybe instead of providing an explicit list of a few words it should
simply say that terms that take their roots in the non-technical world
and whose meaning can only be understood based on history or local
culture ought to be avoided, because *that* actually is the real
root cause of the problem you're trying to address.

Willy
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
