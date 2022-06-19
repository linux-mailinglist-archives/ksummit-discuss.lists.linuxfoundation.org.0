Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E35550AD5
	for <lists@lfdr.de>; Sun, 19 Jun 2022 15:19:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D219F41299;
	Sun, 19 Jun 2022 13:19:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D219F41299
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel-dk.20210112.gappssmtp.com header.i=@kernel-dk.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=IJogi+ju
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BrUzCsE2M41F; Sun, 19 Jun 2022 13:19:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id A44B1414C6;
	Sun, 19 Jun 2022 13:19:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A44B1414C6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 11692C002D;
	Sun, 19 Jun 2022 13:19:44 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A6321C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 13:19:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 728EE408BC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 13:19:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 728EE408BC
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel-dk.20210112.gappssmtp.com
 header.i=@kernel-dk.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=IJogi+ju
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dkfah1qkPOaH
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 13:19:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27F69408AE
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 27F69408AE
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 13:19:40 +0000 (UTC)
Received: by mail-pg1-x52a.google.com with SMTP id s185so2280363pgs.3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 06:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=lmpU8v7jLJ8Scn0rnepVThxFjpxjEs3SUsd3p1Tkrpw=;
 b=IJogi+juRg23AsHHdRSHgAESHFqgy+whlfyoLDwqyTVJ7Kqw9Er51XU+Z+is7UNvYN
 KsvneLituG912xQYveMMGfA4dRIpnw/Ybx5DAhPUODi38R0eUovIru6dKrAbL8WvtDJ6
 5xpub4JUsbaxphwxQ6cqACkR1z38L2QCnTDGJQC8ZN+IC1XdSZI4EtC1yGzhPZJr9AqG
 a+OymMGq7AXApG7C7kUDQbgr7mPKGf5liKhin8S/KUegrXx0xi0Xv+BSougObP/G7LQk
 aFVadLB9WESPCp1VEez46+IZqTBMKnAGVJ+QP6N9cNEcrWbUjaSTmer3IJfbR6ecoAEI
 yzYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=lmpU8v7jLJ8Scn0rnepVThxFjpxjEs3SUsd3p1Tkrpw=;
 b=DBcd9t70xqggPAHxRAGyoIiKq0EvkfBYLaB3CgfOKWsO3pj7ISeu263++6FMk7v+cd
 P+q/jJm57zvvl+tPoK4bU9hr7lCuotEvKM6rLE9iB9BjdJ/23ShRCHPJs8RxHbHlDPw9
 LvRHohGKHbIevwKwSDseam+EpMg7kRjapnmhD2/mMJCUfo3SPcq2fTnqR5fd8bV6Euy2
 TeUrJj8z+h07LHZD2jnbGFEgBEvLx0Z5nP6foPmcrdBtXsbNYvzvjGaty/HkBRck6PMq
 KksTyW3yOsNYVF7JlDGPHaHWMmossRFVVQSY8ZkBsBFk0kiL3C2MKGM42qFngitjFzpV
 J4vg==
X-Gm-Message-State: AJIora9N6kRwZ1bVG3F+ij13CmgCWk8Toplm3UIUg5zYscvzglKYXAAE
 k7VfQNt70gJHul8aIKs+Gc7vlA==
X-Google-Smtp-Source: AGRyM1vBgJRNkyEmklyjtroJI1OhSWMDcs+TeiQJDL9KHqhcpBg8J/Flt2k+SOBgB+0MdHcHwGXomw==
X-Received: by 2002:a63:a112:0:b0:40c:450e:b1ad with SMTP id
 b18-20020a63a112000000b0040c450eb1admr12796432pgf.493.1655644780266; 
 Sun, 19 Jun 2022 06:19:40 -0700 (PDT)
Received: from [192.168.1.100] ([198.8.77.157])
 by smtp.gmail.com with ESMTPSA id
 x2-20020a170902a38200b00168f329b27dsm6781892pla.53.2022.06.19.06.19.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 19 Jun 2022 06:19:39 -0700 (PDT)
Message-ID: <d3ba4011-a31d-05fa-b5de-808a1a5ee56f@kernel.dk>
Date: Sun, 19 Jun 2022 07:19:38 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Christoph Hellwig <hch@infradead.org>
References: <CANiq72nNKvFqQs9Euy=_McfcHf0-dC_oPB3r8ZJii2L3sfVjaw@mail.gmail.com>
 <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com>
 <Yq6+p+aRCjeZ7QsS@infradead.org>
 <Yq70keAYGQQmyJLm@pendragon.ideasonboard.com>
 <2513dc4528c71d34d400c104e91ada6517869886.camel@HansenPartnership.com>
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <2513dc4528c71d34d400c104e91ada6517869886.camel@HansenPartnership.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, ksummit@lists.linux.dev,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Rust
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

On 6/19/22 6:56 AM, James Bottomley wrote:
>> One point I'd like to explicitly address, as it seems to be very
>> relevant to me when it comes to whether or not the pain is worth the
>> gain, is how we'll deal with the fact that the rust compiler will
>> tell a non-negligible [*] part of the kernel developers that they
>> don't have the skills to write kernel code. Will we have a credible
>> option to offer there to help people improve their skills set, and
>> how will we deal with the fact that some people will be left on the
>> side of the road ? Or would we acknowledge what may be the elephant
>> in the room that this would actually be a good thing for the kernel
>> code quality ? What about the impact on a community that is already
>> overworked and prone to burn-out ?
>>
>> [*] I have no way to quantify this at the moment, maybe I'm overly
>> pessimistic, and the number will likely vary depending on areas,
>> probably impacting BSPs differently than mainline.
> 
> I don't think that's a huge concern.  After all rust isn't going to
> penetrate every subsystem all at once ... and realistically it will
> only penetrate some subsystems if there's the ability to review it.
> 
> I really doubt anyone at the maintainer or reviewer level of the kernel
> doesn't have the ability to learn rust (now whether they have the
> desire to is quite another matter) and I'd be surprised if we can find
> any kernel developer who only speaks C.  I think the biggest problem
> with rust is that there's definitely an anti-C bias in the language. 
> What I mean by that is if you look at Java they chose to be as close to
> C where possible to make the language easier to learn.  Rust seems to
> have taken the opposite view and picked a lot of things which could
> have been C like (typing, function calls, returns, mutability, etc.)
> and done them differently just because they wanted to be different from
> C.  That does cause issues for C people because you tend to trip over
> the anti-C biases in the language and are constantly having to look the
> basic syntax up.  This really increases the learning curve going from C
> to rust, which gets annoying very fast, but it's not insurmountable.
> 
> All that said, I expect once we start getting rust based patches, it
> will quickly become apparent where the rust receptive subsystems are
> and I would expect reviewers in those subsystems will quickly become
> rust fluent.  This doesn't answer the pain vs gain aspect, but I
> suspect we won't know that until we actually try.

FWIW, I agree with you here, James. And I have to say that the original
sentiment expressed here by Laurent is weirdly elitist, and not
something that seems positive if that's the case. I'd suggest
re-calibrating that mindset...

Some subsystem maintainers are pretty much spread as thinly as they can
be in terms of workloads, while other subsystems are less active and
supposedly have more spare cycles on their hands. Some handle multiple
subsystems, some subsystems are tiny, some are huge. All of this will
impact both the motivation abd ability to adopt rust.

-- 
Jens Axboe

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
