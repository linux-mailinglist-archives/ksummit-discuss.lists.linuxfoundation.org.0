Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 63271781ED
	for <lists@lfdr.de>; Mon, 29 Jul 2019 00:05:45 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7EB80C6D;
	Sun, 28 Jul 2019 22:05:24 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 58894C52
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Jul 2019 22:05:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E62A35E4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Jul 2019 22:05:21 +0000 (UTC)
Received: by mail-io1-f43.google.com with SMTP id o9so12313856iom.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Jul 2019 15:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=ODYd9NeKnipwd1pV35c8t0zPgPmOAYWWytGFmkOcB1Q=;
	b=OeX3zLY2Sepx9i1nHhC8r3s30dToxUT3jS/yzNk3fRWzbsr6eh0sAS4EIOml0NMwQW
	cZBMZVgY4VGyWiorykHxO/jz/UggsiGZOnansBbezCSKjuJNbR3lB4NIrLAGpO87o9Pf
	bLZeXysrrglHXxUnmZeV5IbSwC1d4WQJPNIL8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=ODYd9NeKnipwd1pV35c8t0zPgPmOAYWWytGFmkOcB1Q=;
	b=TUG5++wdrf89l7VOkCXMxTG8bN+f3YWN4pNWzrOws/U7N/8BJ27rblUSAM1F3UcU6X
	BXZU50KnE9eMD0qxhem4ON7fpT8Z/HVONi09NnBbyDrZH/KC0920BkpZTaiKmVbHcWYK
	FPukQJXQFcZ4RjOLhSAJNfRJshsGYmTcdl1FQlgPI0hzq2Z+VnB0a6slE3JMr10yPOFp
	+xuk8HTjx8G9NXnapiggDVWKWyDhsENve45Q3Xj06uGZ/1UwMXOh44A4yMX1Jvu1p72c
	+5UNaNDN1XEYBAL2OY/KzZLE/SajGik05EeqGD8y1YzOzIPTC7R4ASdpBzOchbv0X1N6
	8pXA==
X-Gm-Message-State: APjAAAXOKH0hQD75YrMV20Rqq0xTCC/Q2zwAHPi0OOXYD4H47fmMA/XF
	lk0x2gwe2sCHh6Pf6ve5roylEPbJ
X-Google-Smtp-Source: APXvYqxx8XwFsxX4JuiY5qVuM5skS0DVyU6ojIXf50+xFDU8S3ttNEI+KuyktuG87BBOK4LeE7+8hQ==
X-Received: by 2002:a02:a1c7:: with SMTP id o7mr113354706jah.26.1564351521211; 
	Sun, 28 Jul 2019 15:05:21 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
	[24.9.64.241]) by smtp.gmail.com with ESMTPSA id
	j23sm48039914ioo.6.2019.07.28.15.05.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 28 Jul 2019 15:05:20 -0700 (PDT)
To: Theodore Ts'o <tytso@mit.edu>
References: <96c97a27-83a2-b86c-2880-984c9fa6d4b5@linuxfoundation.org>
	<20190531021421.GA8123@mit.edu>
	<a88ca2d1-27d7-5b80-3472-7110e7d2158c@linuxfoundation.org>
	<20190603155102.GX2456@sirena.org.uk>
	<b75ac5fd-3734-fbc1-a0af-bd143c70761e@linuxfoundation.org>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <8439c28e-ef1f-be85-bcf5-61f9fd1d4078@linuxfoundation.org>
Date: Sun, 28 Jul 2019 16:05:19 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b75ac5fd-3734-fbc1-a0af-bd143c70761e@linuxfoundation.org>
Content-Language: en-US
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] (withdrawn) Talking code
 or talking in code!
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On 6/3/19 11:39 AM, Shuah Khan wrote:
> On 6/3/19 9:51 AM, Mark Brown wrote:
>> On Fri, May 31, 2019 at 09:42:52AM -0600, Shuah Khan wrote:
>>
>>> Let me go over my vision for this time slot at the Maintainers Summit
>>> if we choose to add it. This isn't going to be a long deep dive session
>>> on the research. I asked Isabella to work with the following outline:
>>
>>> - A short summary of Sentimine
>>> - A short survey of 2 or 3 emails. We do the survey - I can have her
>>> =A0=A0 share the survey format ahead of time. Based on my recollection =
of
>>> =A0=A0 the survey from OSLS presentation, it asks participants to ident=
ify
>>> =A0=A0 the tone of the email. Positive/negative/neutral.
>>> - Isabella compares these results to the tool's analysis. The goal
>>> =A0=A0 is to see how far off the tool's analysis from real developers
>>> =A0=A0 take on these emails.
>>
>> Does that need to be done at the summit or could it be done offline with
>> the summit attendees (or with a list of people pulled from the active
>> developers stats or something for that matter)?=A0 But then...
>>
> =

> I like this idea. This helps us gather data from more developers than
> just the Maintainer summit attendees. We can do this after the trial
> run at the Maintainer summit, provided we do add the topic to the
> agenda.
> =

>>> In addition, I think the tool should also look at clarity of
>>> communication not just tone. To me this is the most useful part for
>>> us. My motivation and goal is to explore if we can take this opportunity
>>> to influence the direction of this research to look at what would be
>>> useful to us as a community.
>>
>> ...it does sound like a useful way of kicking off a discussion.=A0 Perha=
ps
>> the survey could be done in advance and then the discussion jump
>> straight on to any differences in evaluation?=A0 I do agree that clarity
>> is worth looking at, especially with regard to non-native English
>> speakers.
>>
> =

> Doing survey ahead of time would help us spend more time on differences
> in evaluation and help identify areas for improvement in the tool and
> the assumptions it is making.
> =

> If we chose to go this route, I can work with Isabella to send the
> survey out a day or two in advance to gather data.
> =


Hi Ted,

The research to get clarity of communication hasn't produced results
that could of any value so far. It needs more work. Focusing on just
tone in my mind is one dimensional and not useful.

I don't see the point in wasting cycles at Maintainer and Kernel summits
on this topic.

I deiced to withdraw this proposal. Thanks for the time and discussion.

thanks,
-- Shuah

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
