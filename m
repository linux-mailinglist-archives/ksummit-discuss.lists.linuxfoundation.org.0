Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5D251DD89
	for <lists@lfdr.de>; Fri,  6 May 2022 18:23:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B847D83E6A;
	Fri,  6 May 2022 16:23:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dS_NjSFRCTJm; Fri,  6 May 2022 16:23:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 1819083E4C;
	Fri,  6 May 2022 16:23:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ACC96C002D;
	Fri,  6 May 2022 16:23:48 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 73D54C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri,  6 May 2022 16:23:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C8B2415D4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri,  6 May 2022 16:23:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O8ZF3tbb99m9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri,  6 May 2022 16:23:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com
 [IPv6:2607:f8b0:4864:20::22b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 55AD4415CF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri,  6 May 2022 16:23:45 +0000 (UTC)
Received: by mail-oi1-x22b.google.com with SMTP id y63so7993851oia.7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 06 May 2022 09:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YKR1p2XpapTkYTRRGdf56YSSJBMEPrgZBznxidBKLms=;
 b=FifVGujk5CYZw9INUWSaYsjuguzlc6FVqyvGQxK+CXMFIAj34CHTH4MURITWp/780b
 hpvkAYUtMaF6Y+GzmxmlMQgIa1gomt5iALx1LC0Z1BlYpyETqLgXJ3PoIz6nVH7f2OlB
 f3NTsF3hqDCdqtrJbaeOGeV+xAb4SKTXTKGG0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YKR1p2XpapTkYTRRGdf56YSSJBMEPrgZBznxidBKLms=;
 b=Dymc5ROrUTFJp/iJRC6hGgizJTV8P1+T2iBz0HdNGK3qFhDtgcTQe38Rx9Swcizw4p
 CM7DN5BovIouUZHz+VErNcIoGJcPoMqKFRazuiUbNMIhKtD7Jrx4Tzzcp6/Kr0L86/U5
 BQWoprjJEICc+6zeLgZgz+J10hfLoLzPhnHR660ps+zTdMcpzkk1L4JjzdvunCANc3My
 53Q5gLKMGY3yJXayTLCn+78ryhjt+qYsmgqcZiB3fNNzF2LcDvk1+DOxJ+hqr2FQqv2O
 Ksf5PrLR0Y5Gj6BGC2RY6A2kCDTT3WoaZKKVUX1zTizZUUiBINQz/rSxoRDOS+CWhujh
 zHRg==
X-Gm-Message-State: AOAM531XvUhcnSi331DVBn6/zPgE0bpd+rGp9FiI56jleD/8VPei0q6W
 SNxgRtG925QDLvBxrNuR3+41v4R8
X-Google-Smtp-Source: ABdhPJzqYzGLNGpOMnI0vx6E0reoKjwmACMdIM1kV7RuedYut8iUJNPgJ5XCkhsQQDKfxu4zrzrGQg==
X-Received: by 2002:a05:6808:180f:b0:326:60a9:501b with SMTP id
 bh15-20020a056808180f00b0032660a9501bmr5147973oib.91.1651854224289; 
 Fri, 06 May 2022 09:23:44 -0700 (PDT)
Received: from [192.168.1.128] ([71.205.29.0])
 by smtp.gmail.com with ESMTPSA id
 p11-20020a4ab38b000000b0035eb4e5a6c2sm1981364ooo.24.2022.05.06.09.23.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 May 2022 09:23:43 -0700 (PDT)
To: Arnd Bergmann <arnd@arndb.de>, Dan Carpenter <dan.carpenter@oracle.com>
References: <20220506091338.GE4031@kadam>
 <CAK8P3a0DY2b15yyzpwsjOCqOALfTbsmYf1kTnQZF5wPW8mtFbQ@mail.gmail.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <dc58c60e-a92c-92b8-ae5e-d7cf2ef5f051@linuxfoundation.org>
Date: Fri, 6 May 2022 10:23:43 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0DY2b15yyzpwsjOCqOALfTbsmYf1kTnQZF5wPW8mtFbQ@mail.gmail.com>
Content-Language: en-US
Cc: kbuild test robot <lkp@intel.com>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>, kbuild@lists.01.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nathan Chancellor <natechancellor@gmail.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On 5/6/22 5:56 AM, Arnd Bergmann wrote:
> On Fri, May 6, 2022 at 11:13 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> 
>>
>> It's frustrating.  Sometimes the false positives are hard to analyse
>> because I have to read through multiple functions.  A lot of times
>> when I write a patch and a commit message Nathan has already fixed it
>> so it's just a waste of time.
> 
> Agreed. I'm not actually checking for those warnings on gcc any more,
> but just the clang warnings point to a bigger problem.
> 
>> It's risky as well.  The Smatch check for uninitialized variables was
>> broken for most of 2021.  Nathan sometimes goes on vacation.
>>
>> I guess I would hope that one day we can turn on the GCC uninitialized
>> variable warnings again.  That would mean silencing false positives
>> which a lot of people don't want to do...  Maybe Clang has fewer false
>> positives than GCC?
> 

I would like to throw resource leak bugs in the mix. I am finding cppcheck
has been effective in finding them.

I am seeing a lot of file pointer leaks  in error legs in kselftest code error
paths. I have a few fixes in the works to send out.

We could discuss this topic at the LPC Kernel Testing and Dependability mini-conf
as well.

thanks,
-- Shuah



_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
