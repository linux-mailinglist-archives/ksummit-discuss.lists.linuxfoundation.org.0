Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1F7638AF
	for <lists@lfdr.de>; Tue,  9 Jul 2019 17:32:08 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B94603AAA;
	Tue,  9 Jul 2019 15:31:50 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F12103A23
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Jul 2019 15:22:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
	[209.85.160.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 64E51148
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Jul 2019 15:22:04 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id n11so21989809qtl.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 09 Jul 2019 08:22:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=/fAY4SQ5NXxKMxLaLJYw+hK4Gie9+DQgoaDaaxM27yE=;
	b=QlJoUaySqQqOA3fzbIK75LOkMJ+GC2UaaHTIHqLPAR/+nAHNQCAnm+qA5DEo39e+vE
	XhoXZRnU/mrLT7m8PECUkCW1QtQXZxdNN3ZxZFIkzHUmwrpGeBnKZYibjYDac2dm7EYo
	3aaTCN8BqzPLVopkhRHY4tEuwtKqa47OPSOu3bzaYMrpjwCDDNASeB6V0Wde9ve25dTg
	G8m6k233z8jGrbUBW55ZAHfgjIqjvc5fF9pcAggzCldJ5NyjVzzmc31YjiHi7Vbzt+ue
	hHBgEfAQX+ezFhAm85m9RceSuI/0CUmKXli/tWP8ec2LzruknOPBmyhkTTTN9/zhTfGF
	+gCQ==
X-Gm-Message-State: APjAAAWPud29BAfwt9LWUtLrmV6WyBBbojiTFTySAbxslNEx7SSqakVL
	BybxkNFw72IM8R15bumdfLv66USWLTE=
X-Google-Smtp-Source: APXvYqxRNdjIiGzPYYuM3LcQiE+klq4Aoano1BKOxGRdVlB3QYu/wdJvhnuz0QvfMIBoe6sqCyIzOA==
X-Received: by 2002:ac8:3378:: with SMTP id u53mr18558870qta.318.1562685723188;
	Tue, 09 Jul 2019 08:22:03 -0700 (PDT)
Received: from [192.168.1.157] (pool-96-235-39-235.pitbpa.fios.verizon.net.
	[96.235.39.235]) by smtp.gmail.com with ESMTPSA id
	f20sm8926918qkl.48.2019.07.09.08.22.02
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Tue, 09 Jul 2019 08:22:02 -0700 (PDT)
To: Greg KH <greg@kroah.com>, Takashi Iwai <tiwai@suse.de>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
	<20190706003214.GE20625@sirena.org.uk>
	<20190708110208.GN10104@sasha-vm>
	<20190708123733.GC8576@sirena.org.uk>
	<102219fd-4ba0-e1ff-b2e3-9a0a43392c4c@roeck-us.net>
	<s5h7e8swq87.wl-tiwai@suse.de> <20190708151040.GB1548@kroah.com>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <fb0a8b03-a2c9-2250-14b7-3e65b5e9c87a@redhat.com>
Date: Tue, 9 Jul 2019 11:21:56 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190708151040.GB1548@kroah.com>
Content-Language: en-US
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel process
 automation and improvement
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

On 7/8/19 11:10 AM, Greg KH wrote:
> On Mon, Jul 08, 2019 at 04:33:28PM +0200, Takashi Iwai wrote:
>> On Mon, 08 Jul 2019 16:05:44 +0200,
>> Guenter Roeck wrote:
>>>
>>> On 7/8/19 5:37 AM, Mark Brown wrote:
>>>> On Mon, Jul 08, 2019 at 07:02:08AM -0400, Sasha Levin wrote:
>>>>> On Sat, Jul 06, 2019 at 01:32:14AM +0100, Mark Brown wrote:
>>>>
>>>>>> I'm not saying leave it alone, it's more a question of how
>>>>>> aggressive we are about picking up things we think might be
>>>>>> relevant fixes but haven't had some sort of domain specific
>>>>>> analysis of.  Testing is a good way to mitigate the potential
>>>>>> risks here.
>>>>
>>>>> I agree, and for various subsystems and drivers where the maintainers
>>>>> volunteer their domain specific expertise to send backports to stable, I
>>>>> have "blacklisted" it from AUTOSEL since indeed it's a much better
>>>>> option.
>>>>
>>>> Hrm, it's definitely getting a bunch of stuff for my subsystems
>>>> where I do tag things for stable...
>>>>
>>>>>>> This came up in the last MS, and the agreement there was that we expect
>>>>>>> stable kernel users to test their workloads before throwing it into
>>>>>>> production.
>>>>
>>>>>> That's kind of the problem - if people are doing testing and end
>>>>>> up finding problems coming back in the stable kernel that's the
>>>>>> sort of thing that encourages them to not just take stable en
>>>>>> masse as we say they should.  Part of the deal with stable is
>>>>>> that it is conservative, people can trust it to be a low risk
>>>>>> update.  That's not happening now as far as I'm aware but it does
>>>>>> worry me that it might happen.
>>>>
>>>>> Right, and the rate at which AUTOSEL commits are reverted is lower than
>>>>> commits that are actually tagged for stable. If AUTOSEL commits on their
>>>>> own were being reverted left and right I'd agree we need to tone it
>>>>> down, but I don't see it happening now.
>>>>
>>>> I'm not sure how many people will actually report problems they
>>>> experience upstream rather than just fixing things locally and
>>>> just moving on.  The more code is the more likely it is that one
>>>> of the users will report things.
>>>>
>>>
>>> I for my part will most definitely report any such problems, since each
>>> regression in stable releases is used as argument against merging
>>> stable releases (even if the regression rate is negligible), and I am
>>> very interested in getting that regression rate as close to zero as
>>> possible. Reporting each and every regression is an essential part
>>> of that.
>>
>> BTW, regarding regression: currently we have no central regression
>> tracking.  This is another big missing piece, and a thing to be
>> discussed in KS, IMO.
> 
> Well, I think the conversation will go just like it has in the past for
> this issue:
> 	"We need to have someone track regressions!"
> 	"X said they would do it but they need to be paid, any company
> 	willing to sponsor this?"
> 	{crickets}
> 
> We know we need this, we have at least one talented and capable person
> to do the work, but no company is willing to step up and fund it :(
> 
> It's like where we were 5 years ago with testing, everyone knew there
> was a problem, but no one was willing to do anything about it.  That
> time I convinced some LF member companies to start doing work within
> their companies toward this, but that really doesn't solve this type of
> problem as being "distributed" isn't the issue here...
> 
> thanks,
> 
> greg k-h

There's two parts here: a centralized place to track bugs and regressions
and person to help manage those. While having a person to manage everything
would be good, getting the central tracking going without relying on a
single person is important.

Thanks,
Laura

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
