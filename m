Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB4E627E0
	for <lists@lfdr.de>; Mon,  8 Jul 2019 20:04:40 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C52DC29DD;
	Mon,  8 Jul 2019 18:04:27 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7C9BD28A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 17:56:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 20445880
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 17:56:51 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 994EF2166E;
	Mon,  8 Jul 2019 17:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1562608610;
	bh=4S1jtCgqmJGehCBgKKT8Zw/r2P0Bc6yXQDH8A/VrYhY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u9jW3611RqrTPsC/TeyO8Aa2dW65B8tnnZlpZrhIo+mefxA0VGkcYxN2veoGtRYhI
	dwM5f7qOvS73zqWn+8NFlTbt8/ZXFsSu8zfHFRfvdMCMw9VVX2dPbPJ0P1fN2mJ6I8
	Qg8GE+QEaCUNBGADxzEGMU/d4JXiudCEf89lL7oc=
Date: Mon, 8 Jul 2019 13:56:49 -0400
From: Sasha Levin <sashal@kernel.org>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20190708175649.GO10104@sasha-vm>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
	<20190706003214.GE20625@sirena.org.uk>
	<20190708110208.GN10104@sasha-vm>
	<nycvar.YFH.7.76.1907081329580.5899@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.1907081329580.5899@cbobk.fhfr.pm>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
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

On Mon, Jul 08, 2019 at 01:35:15PM +0200, Jiri Kosina wrote:
>On Mon, 8 Jul 2019, Sasha Levin wrote:
>>
>> >> If we were to start avoiding driver updates, it would act as an
>> >> incentive for people not to upgrade their kernel.
>> >
>> >I'm not sure I follow the logic here?
>>
>> The way I see it, the lower your "effective delta" is between to
>> kernels, the easier it is to move forward. For example, if I have a
>> product that runs on 4.19 and uses all our core kernel code + 10
>> drivers, and I know that those drivers had most of the fixes backported
>> to my LTS tree, I'd feel much more confident going to 5.4 knowning that
>> I already have most of the patches that come with 5.4.
>>
>> For me it's a matter of how one would budget a move from a kernel X LTS
>> to kernel Y LTS, and I think that as that budget requirement grows it's
>> actually harder to actually do it (and convince management), acting as a
>> negative incentive to stay with whatever works now.
>
>But where does the 'stable' aspect appear here?
>
>I think it's reasonable to expect 'stable' to mean 'minimal number of
>changes needed to maintain stability of the kernel', and that I believe
>was the original purpose of stable tree.

I think that we're parsing the words "stable kernel" differently. You
see "stable kernel" as a kernel that remains mostly the same over time
and accepts a very small amount of critical fixes.

On the other hand, my expectation of a "stable kernel" is a kernel
without known bugs. I associate the word "stable" with stable runtime
rather than a stable codebase.

>Now you seem to be repurposing 'stable' as 'as close to upstream as
>possible in order to minimize cost of version updates'.

I don't think that the stable kernel was meant to lag behind upstream
too much. Even the rules suggest that a commit just has to be upstream,
without regard to how long (as long as it made one release, so ~1 week
tops).

I'm not suggesting that we should be in sync with Linus, all I'm saying
that users who stay close to upstream have an easier time moving to
newer kernels, and we want to provide that ability to users of the
stable kernel.

>I guess that's one of the reasons why distros are gradually turning away
>from stable tree the main purpose of distros is to provide stability,
>while it clearly is not minimizing acumulation of cost for future version
>updates.

I'm not sure about statistics, but I think that the stable tree is
gaining more "distro" users than losing them. I think it's also
important to note here that the stable tree doesn't work for everyone,
and that's perfectly fine.

Even with all the AUTOSEL stuff that go in, a quick look at my mailbox
suggests that I spent more time finding missing patches from various
distro trees than reverting patches from the stable trees.

--
Thanks,
Sasha
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
