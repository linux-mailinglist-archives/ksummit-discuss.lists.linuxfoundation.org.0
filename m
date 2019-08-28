Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD8DA0B84
	for <lists@lfdr.de>; Wed, 28 Aug 2019 22:30:28 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EEC2335ED;
	Wed, 28 Aug 2019 20:30:16 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 338C43509
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 20:30:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
	[209.85.166.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E675BEC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 20:29:59 +0000 (UTC)
Received: by mail-io1-f45.google.com with SMTP id s21so2317488ioa.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 13:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=LiVpdmV9dHPL4aYDQUpzdo4S7Wu9DHp24H6+KGhUtRE=;
	b=d+qqFyN7gqqaERKD5jSb7mFdQXsyhJPmReajGVqLnKmYqbJKeUn1/Ogkic8N9PTPmo
	/fo2KvipPT5KCV0bTyYpXI4zHrRxg1f1587Tohud4kdR6GQQcG6jcCeXgTW5f3umZFtc
	XDBs9xwyfHIdfrVmYOCqsucy0YbYR+5C0NxXk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=LiVpdmV9dHPL4aYDQUpzdo4S7Wu9DHp24H6+KGhUtRE=;
	b=RmZAiDegqRU1P2zcRNTB+8r8f9Dd0FECZGG1q2K+8Ygnd1Q4cg/eUgxH/+e7HooQH5
	VhLWeupacbBG3d0cseEfrXQXn8lkQiic1PngEuv9pp9YsYSDkx7CosY2ade6d72n4jxc
	er0EnagXGDYjNT34Mx/sLf/5pbXths6QpkX3iU1RW486OioSS6lM7O7Pw5Cg3q7mESz8
	NfKc+TC0Movo4ldkFiy6rsO6Kaeqtpn2X0M5T6CgJfBhq2rO+M2D4RDt1uytDJVil9Tx
	U975CR/o8CTGOScD/FlC7zgcLisntsUs7n3cTSiJ6LhOJbk3+3as9RfmL4qDBuUiNdSB
	0B4g==
X-Gm-Message-State: APjAAAUnL6laMBfCbHMXBTfgvGx0aaMGQuS31R7zQYSdt2ZsvxwDDILF
	fJUoEvbMu+qBn+/H9HPuOuW+nT1LLvvjOQ==
X-Google-Smtp-Source: APXvYqzcJ3N4Uw1QHbVqyZvKvrvEy4vh+oPlAFX1QepCXwNBVxulK/3Bfc23P77qOhKjou295bRgZw==
X-Received: by 2002:a02:37c6:: with SMTP id r189mr6618865jar.118.1567024199036;
	Wed, 28 Aug 2019 13:29:59 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
	[24.9.64.241])
	by smtp.gmail.com with ESMTPSA id c3sm101883iot.42.2019.08.28.13.29.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 28 Aug 2019 13:29:58 -0700 (PDT)
To: "Theodore Y. Ts'o" <tytso@mit.edu>,
	ksummit-discuss@lists.linuxfoundation.org
References: <20190826212548.GA15967@mit.edu>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <984a9b85-10c4-69ad-0d01-a7a155724231@linuxfoundation.org>
Date: Wed, 28 Aug 2019 14:29:57 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190826212548.GA15967@mit.edu>
Content-Language: en-US
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: Re: [Ksummit-discuss] DRAFT Kernel Summit Track schedule
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On 8/26/19 3:25 PM, Theodore Y. Ts'o wrote:
> This is a draft kernel summit track schedule.  Please let me know of
> any potential conflicts or schedule changes that you might like to
> make.
> 
> The Open Slots will be available for last minute scheduling requests,
> unconference style.
> 
> Thanks!
> 
> 					- Ted

I would like to grab an open slot for discussing kselftest.

I would like to get an idea on where developers and maintainers
stand on running latest stable kselftests on older stable releases.
Open lot on Sept 10th afternoon or Sept 11th will be great.

thanks,
-- Shuah
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
