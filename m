Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B59A389C
	for <lists@lfdr.de>; Fri, 30 Aug 2019 16:00:25 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 736F16169;
	Fri, 30 Aug 2019 14:00:07 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BAC7A6067
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 13:58:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 556C87DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 13:58:28 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id t3so14043898ioj.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 06:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=subject:to:references:from:cc:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=cAwIQutGoYBDzS2ZQgVh7Kv5hJdPw13gTEH///bikSM=;
	b=KvSbtvYm/C0GNn+oItgEuR3kj+hrpAqY7Q8JuLrBgPiYQ/c+/4lNwyk98zVoDjoVuL
	EnLSQQ2i7VESYjSq9KmOVlbOjiQA9or3IXStlhRxD+T1GpyAYuENlJpzuj3SYey3s4j/
	cOE/VpiyFM82p5Vp5CD2I813aKiamLzTdrOuY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:cc:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=cAwIQutGoYBDzS2ZQgVh7Kv5hJdPw13gTEH///bikSM=;
	b=JUefweyiiVQ+LgBwCZTvv7qDT7eWdSaB9aT72+Df3RNKXeZp78Uh8bquuPI2v9pf3A
	1MjMMWdNLjDGkn4cxhOkkfq99+e6sbQyWxfAV0dFLyKuH3yfzWRFly1/c+FVjOMkchhr
	Od4CdPguGXbvY3/KrgMXICawoHVIFkwYdZ/F0zlVn8Ipr0yd1iV6FTUJ6DjhnP9YZzEB
	TmYdInIR0vSNZZ6prqtBjU/OtYEQSWW+WXz2283jjWl3gYYX6EANvwezgehr8zc5KQZq
	1MrRJBmhmXmUDHA0hcCoQaCKW7y8M2uhyJpMVycSDRpD/dpoKOY/qJ6uzRnlGpmvgPMr
	blCw==
X-Gm-Message-State: APjAAAUIbGVr5IgH8A9hT0EmCvA0EqdCKGR5fz6DJA3muLAmxvY6lehq
	bHiuYf4awWdcqoJxPn8pNw2TRVC54VM6/A==
X-Google-Smtp-Source: APXvYqydhrOPQ8iI0Bf2+MkbKVJ0i2kUxsqcga9p/VGoFIOkSLZItjXpfEQK+UpMHv4g8pMS8/j/yg==
X-Received: by 2002:a6b:3b4a:: with SMTP id i71mr10697806ioa.258.1567173507612;
	Fri, 30 Aug 2019 06:58:27 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
	[24.9.64.241])
	by smtp.gmail.com with ESMTPSA id l2sm9401931ioq.83.2019.08.30.06.58.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 30 Aug 2019 06:58:27 -0700 (PDT)
To: "Theodore Y. Ts'o" <tytso@mit.edu>,
	ksummit-discuss@lists.linuxfoundation.org
References: <20190830031720.GA7490@mit.edu>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <757b2868-5ac6-5da7-a064-0b8393e1aa41@linuxfoundation.org>
Date: Fri, 30 Aug 2019 07:58:25 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190830031720.GA7490@mit.edu>
Content-Language: en-US
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
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

On 8/29/19 9:17 PM, Theodore Y. Ts'o wrote:
> The following topics have been proposed for the maintainer's summit on
> this list:
> 
> * Squashing Bugs!   (Shuah Kahn)
>      How do we deal with the high volume of bugs reported (especially
>      by automated systems like syzbot)
> 
> * Depth of the "pull network"	     (James Bottomley)
>      Should we be encouraging more people to send pull requests
>      to maintainers and sub-maintainers (and sub-sub-maintainers),
>      versus a more "flat tree" model where people send pull requests
>      directly to Linus?
> 
> * Stable Kernel Process Automation and Improvement (Sasha Levin)
>      What remaining pain points are there?  How can we make it better?
> 
> * Talking in Code or talking Code (Shuah Kahn)
>      This was a suggestion about a specific LPC proposal; the core
>      suggestion was talkinig about our e-mail conversation styles
>      on the mailing list.   We have a similar KS track talk:
>      "The list is our process: An analysis of the kernel's
>      email-based development process"

Let's drop this topic. I asked the researcher to focus on clarity of
communication for this talk. Researcher has been looking for tools
that can help analyze clarity of communication in our emails, and
hasn't been successful. More like the analysis too noisy to make
sense of it. As a result, there hasn't been much progress in the
research in the clarity of communication.

> 
> * Patch version changes in commit logs?   (Shuah Kahn)
>      How to make information about how commit has changed while being
>      developed.  (A solution which has already been adopted by some
>      maintainers is to use the Link: tag in the commit discussion).
>      There have been a more recent discussion in this past week under
>      subject line "Allowing something Change-Id (or something like it)
>      in kernel commits".
>   

Looks like this has been resolved with adapting the Link: tag. I would
say we can summarize this and provide a link to the script to share
more easily than digging through the ksummit-discuss threads.

> Some of these topics have already been mostly resolved via e-mail
> discussion.  Which topics do people deserves more discussion?
> 
> Are there some additional topics that you'd like to suggest that we
> discuss at the maintainer's summit?
> 
> 					- Ted
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
