Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DFF5301FF
	for <lists@lfdr.de>; Sun, 22 May 2022 11:08:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 583C14181F;
	Sun, 22 May 2022 09:08:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xRKZVVH-bLJk; Sun, 22 May 2022 09:08:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 26C3A41823;
	Sun, 22 May 2022 09:08:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9B249C002D;
	Sun, 22 May 2022 09:08:03 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A8986C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 22 May 2022 09:08:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 88ED483388
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 22 May 2022 09:08:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WxjqmZIRoBqS
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 22 May 2022 09:08:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7CB198315C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 22 May 2022 09:08:01 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0DCA3B80ACB;
 Sun, 22 May 2022 09:07:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52A0EC385AA;
 Sun, 22 May 2022 09:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1653210476;
 bh=Tnd9k7iRjgfdcQgXzfq2JZ4qYtO5XwbTFBmo19t2jIA=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=S8xXimqwBxzn98bU6z1yaq8fOwEkP+dYMHN4eCURaFRz1fCsgAvfxI9/nsO9Umk+2
 SA1sZoI38b6YE61f3Lya/sy7xMavAKqSUYWRuKg3zXQwN9jIf337VBGkqckkyI6Yco
 gFjd7P1zz1tNPnfmBUGwqel+eI3I5ACsqtRgOrSnpcMl2Jdjh7+joPY4TioEsLFQ//
 i8+ZpTnOSrNQWUuShcWtDsJuzaS41D/07R1BjG1RnAXK/cpBCEnrasRXZqNAi4iMpU
 8ZNZzzXyYbLAEbPAbWYRW0XdJWbCqEIedtT3HnQ4A7UsGV2LLJGCTYJiF4ZSTiQc0a
 NdZYWnmCuBQjQ==
Message-ID: <a673356d-4534-afd9-b85f-b8de7f58c9a8@kernel.org>
Date: Sun, 22 May 2022 11:07:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@oracle.com>,
 ksummit-discuss@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
References: <20220506091338.GE4031@kadam>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220506091338.GE4031@kadam>
Cc: Nathan Chancellor <natechancellor@gmail.com>, kbuild@lists.01.org,
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

On 06/05/2022 11:13, Dan Carpenter wrote:
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

In the topic of suppressing false positives we also have several
"fixes", sometimes pointed out incorrectly by Coverity, for missing
check for of_device_get_match_data().

Compare:
https://elixir.bootlin.com/linux/v5.18-rc7/source/drivers/clk/clk-aspeed.c#L415
https://elixir.bootlin.com/linux/v5.18-rc7/source/drivers/clk/clk-oxnas.c#L216

Although in theory the of_device_get_match_data() can return NULL, in
practice it is not possible because driver matches via OF thus there
will be always of_device_id->driver data.

Coverity screams about it, people fix it by adding checks for NULL,
which is pointless. Half of drivers add the !NULL check, half do not...

Best regards,
Krzysztof
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
