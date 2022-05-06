Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC87D51D502
	for <lists@lfdr.de>; Fri,  6 May 2022 11:53:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 899D840186;
	Fri,  6 May 2022 09:53:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cLvRb1mnDkl6; Fri,  6 May 2022 09:53:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id E5C2740127;
	Fri,  6 May 2022 09:53:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A0EABC002D;
	Fri,  6 May 2022 09:53:14 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BF4B2C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri,  6 May 2022 09:53:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AD1084010C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri,  6 May 2022 09:53:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CdER_3ER3d-c
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri,  6 May 2022 09:53:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 262C840025
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri,  6 May 2022 09:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inria.fr; s=dc;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=urze1RM/gX18V878AZ6j/ivdQDVcYKjIqHZDW8Da1MA=;
 b=SFavKmlT8DEGi/9oCpAqWxugYXIgZwXkngrNq+97vEdi+coaSSh0yHPm
 Yw2auqqwRB25aoji3y1v03veYx/7frj0JPM2Xgd7EetJo8k288K+8NpSa
 XcgrCEvdcGj4/RXiPprKkK3JI0Oi0lHcR/Pf/ls2Dhq4vqYpJh2PrP0AL A=;
Authentication-Results: mail3-relais-sop.national.inria.fr;
 dkim=none (message not signed) header.i=none;
 spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.91,203,1647298800"; d="scan'208";a="13371044"
Received: from 245.122.68.85.rev.sfr.net (HELO hadrien) ([85.68.122.245])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 May 2022 11:53:08 +0200
Date: Fri, 6 May 2022 11:53:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Dan Carpenter <dan.carpenter@oracle.com>
In-Reply-To: <20220506091338.GE4031@kadam>
Message-ID: <alpine.DEB.2.22.394.2205061150230.2845@hadrien>
References: <20220506091338.GE4031@kadam>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Cc: Nathan Chancellor <natechancellor@gmail.com>, kbuild@lists.01.org,
 linux-kernel@vger.kernel.org, ksummit-discuss@lists.linuxfoundation.org,
 lkp@intel.com
Subject: Re: [Ksummit-discuss] uninitialized variables bugs
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



On Fri, 6 May 2022, Dan Carpenter wrote:

> Ever since commit 78a5255ffb6a ("Stop the ad-hoc games with
> -Wno-maybe-initialized"), GCC's uninitialized variable warnings have
> been disabled by default.  Now, you have to turn on W=1 or W=2 to see
> the warnings which nobody except Arnd does.
>
> Disabling that has lead to a bunch of embarrassing bugs where variables
> are *never* initialized.  Very unsubtle bugs.  The bugs doesn't reach
> users because Nathan Chancellor and I review Clang and Smatch warnings
> respectively.  Also the kbuild-bot reports uninitialized variables.
>
> It's a lot to deal with.  Uninitialized variable bugs are probably the
> most common bug I have to deal with.
>
> It's frustrating.  Sometimes the false positives are hard to analyse
> because I have to read through multiple functions.  A lot of times
> when I write a patch and a commit message Nathan has already fixed it
> so it's just a waste of time.
>
> It's risky as well.  The Smatch check for uninitialized variables was
> broken for most of 2021.  Nathan sometimes goes on vacation.
>
> I guess I would hope that one day we can turn on the GCC uninitialized
> variable warnings again.  That would mean silencing false positives
> which a lot of people don't want to do...  Maybe Clang has fewer false
> positives than GCC?
>
> The Smatch check for uninitialized variable was deliberately written to
> be more strict than GCC because GCC was missing bugs.  So I think
> leaving Smatch false positives is fine.  There is a trade off between
> fewer false positives and missing bugs and Smatch is meant to err on the
> side of finding bugs but with the cost of false positives.
>
> Most of the Smatch uninitialized false positives are caused by loops:
>
> 	int i, ret;
>
> 	for (i = 0; i < bytes; i++) { // <-- what if bytes is zero?
> 		if (...)
> 			continue; // <-- can every iteration hit continue?
> 		ret = frob();
> 	}
>
> 	return ret;
>
> There is also stuff like this which is harmless:
>
> 	uint val;
>
> 	ret = read(&val);
> 	*p = val;  // <-- uninitialized variable if read() fails
> 	return ret;
>
> Btw, here is how to run Smatch on your code:
> https://staticthinking.wordpress.com/2022/04/25/how-to-run-smatch-on-your-code/

Could smatch inform the user that some results are likely false positives,
or even order the results according to their likely true positiveness?

julia
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
