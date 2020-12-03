Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E95CC2CDF46
	for <lists@lfdr.de>; Thu,  3 Dec 2020 21:04:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0E5C787C42;
	Thu,  3 Dec 2020 20:04:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sB5slaq1FTEG; Thu,  3 Dec 2020 20:04:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id A714487DD6;
	Thu,  3 Dec 2020 20:04:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 62ADEC0FA7;
	Thu,  3 Dec 2020 20:04:14 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 01768C0FA7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 20:04:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D53C9204B4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 20:04:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fqcf6Afc2uzV
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 20:04:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [96.44.175.130])
 by silver.osuosl.org (Postfix) with ESMTPS id CBACF20346
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 20:04:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 22AA71280B71;
 Thu,  3 Dec 2020 12:04:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1607025850;
 bh=HexzAZacNggZxtGW31Mcyz0+xUVZxQ1FJZ1MlQz9IPs=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=qZBF4ptSr8bG0N4UTqqqmJAjjjQTV06ac3tcNPrvLRFQ6fPUe8U98bOIAR1STlNHs
 Isk5fuj6+OM7y3EYvnLvyuyt8ISVWiEnpOTBeGQx3pNDLiRyWdQmr3RrfFvYwzO25E
 GKW5gYxCTJFfJuz44OYtBLi0UE9zkNkb+/PmW2uY=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id t5uHidc9ZBPY; Thu,  3 Dec 2020 12:04:10 -0800 (PST)
Received: from jarvis.int.hansenpartnership.com (unknown
 [IPv6:2601:600:8280:66d1::527])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id B9BB11280B6F;
 Thu,  3 Dec 2020 12:04:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1607025850;
 bh=HexzAZacNggZxtGW31Mcyz0+xUVZxQ1FJZ1MlQz9IPs=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=qZBF4ptSr8bG0N4UTqqqmJAjjjQTV06ac3tcNPrvLRFQ6fPUe8U98bOIAR1STlNHs
 Isk5fuj6+OM7y3EYvnLvyuyt8ISVWiEnpOTBeGQx3pNDLiRyWdQmr3RrfFvYwzO25E
 GKW5gYxCTJFfJuz44OYtBLi0UE9zkNkb+/PmW2uY=
Message-ID: <147e17a3a1e54d46611b285a973c03f14b19dc96.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Matthew Wilcox <willy6545@gmail.com>
Date: Thu, 03 Dec 2020 12:04:08 -0800
In-Reply-To: <CAFhKne9ZSbwrH6-g7og2BBEEDGd6ScDnZTNg3znQLvLDCDfeoA@mail.gmail.com>
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
 <694039d6e386d999fd74d038cf2627f5b3b0ca71.camel@HansenPartnership.com>
 <CAFhKne9ZSbwrH6-g7og2BBEEDGd6ScDnZTNg3znQLvLDCDfeoA@mail.gmail.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Cc: Vlastimil Babka <vbabka@suse.cz>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>
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

On Thu, 2020-12-03 at 13:52 -0500, Matthew Wilcox wrote:
> It's not so much "clean history" that's the desire. It's "don't leave
> landmines for git bisect".

... top posting?

Well functional git bisect and show the evolution of the patch aren't
mutually exclusive.  Plus our current clean history approach doesn't
always detect them ...

That said, I agree that if a review comes in that shows a patch would
break the build or runtime in a way that would damage bisection, it
should be folded.  I suppose this argues that only less trivial changes
can be shown as part of the unfolded history, and since they're
obviously less important than the review driven folded change it would
add more bias to track them.

I fall back to my link is enough comment.

James


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
