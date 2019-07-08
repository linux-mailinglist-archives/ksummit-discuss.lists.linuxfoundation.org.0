Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B39627FC
	for <lists@lfdr.de>; Mon,  8 Jul 2019 20:09:22 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9E3BC29FB;
	Mon,  8 Jul 2019 18:09:12 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E9D5D29C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 18:01:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7C81D827
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 18:01:56 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F358E21874;
	Mon,  8 Jul 2019 18:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1562608916;
	bh=s0V0UnCieKK2D5VeKjc6/ZwrsLcww9jrYptFQWJj1y0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EhnVH8PcTyXJ7nkM+RxVHIaiKa6Vcd+momrWJo1GjeVFyMcNNAd0CDPtCMRK4fey5
	YkmhO1Fxtwu5l4UVDyTxV5cCc1S7PzspTMOcTQQMZM2gcQdguGJMKisCpHoo70QQgE
	Y/zeALTx4StCvRN6LnB8Tkpe1WSH9Ra0P3lvv1t8=
Date: Mon, 8 Jul 2019 14:01:55 -0400
From: Sasha Levin <sashal@kernel.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20190708180155.GP10104@sasha-vm>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
	<20190706003214.GE20625@sirena.org.uk>
	<20190708110208.GN10104@sasha-vm>
	<20190708123733.GC8576@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708123733.GC8576@sirena.org.uk>
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

On Mon, Jul 08, 2019 at 01:37:33PM +0100, Mark Brown wrote:
>On Mon, Jul 08, 2019 at 07:02:08AM -0400, Sasha Levin wrote:
>> On Sat, Jul 06, 2019 at 01:32:14AM +0100, Mark Brown wrote:
>
>> > I'm not saying leave it alone, it's more a question of how
>> > aggressive we are about picking up things we think might be
>> > relevant fixes but haven't had some sort of domain specific
>> > analysis of.  Testing is a good way to mitigate the potential
>> > risks here.
>
>> I agree, and for various subsystems and drivers where the maintainers
>> volunteer their domain specific expertise to send backports to stable, I
>> have "blacklisted" it from AUTOSEL since indeed it's a much better
>> option.
>
>Hrm, it's definitely getting a bunch of stuff for my subsystems
>where I do tag things for stable...

You still need to explicitly ask me to blacklist it, but I'm more than
happy to if you feel the AUTOSEL process doesn't add value. Some
maintainers choose to keep AUTOSEL but just respond with "NAK" on
patches they don't want in.

>> > > This came up in the last MS, and the agreement there was that we expect
>> > > stable kernel users to test their workloads before throwing it into
>> > > production.
>
>> > That's kind of the problem - if people are doing testing and end
>> > up finding problems coming back in the stable kernel that's the
>> > sort of thing that encourages them to not just take stable en
>> > masse as we say they should.  Part of the deal with stable is
>> > that it is conservative, people can trust it to be a low risk
>> > update.  That's not happening now as far as I'm aware but it does
>> > worry me that it might happen.
>
>> Right, and the rate at which AUTOSEL commits are reverted is lower than
>> commits that are actually tagged for stable. If AUTOSEL commits on their
>> own were being reverted left and right I'd agree we need to tone it
>> down, but I don't see it happening now.
>
>I'm not sure how many people will actually report problems they
>experience upstream rather than just fixing things locally and
>just moving on.  The more code is the more likely it is that one
>of the users will report things.
>
>> > > If we were to start avoiding driver updates, it would act as an
>> > > incentive for people not to upgrade their kernel.
>
>> > I'm not sure I follow the logic here?
>
>> The way I see it, the lower your "effective delta" is between to
>> kernels, the easier it is to move forward. For example, if I have a
>> product that runs on 4.19 and uses all our core kernel code + 10
>> drivers, and I know that those drivers had most of the fixes backported
>> to my LTS tree, I'd feel much more confident going to 5.4 knowning that
>> I already have most of the patches that come with 5.4.
>
>I see, that's definitely a new one to me.  The concerns people
>usually have about upgrading are more around the core kernel
>changing performance characteristics or something in a way that
>disrupts important workloads.  I'm not quite sure I follow the
>logic there TBH, it seems to be discounting new development
>rather too much - even if the drivers have been very static
>there's all the integration with the rest of the kernel to think
>about.

My thinking is that we will need to address new core kernel developments
either way, which is why I haven't mentioned them here.

The variable cost here is how much effort will go into validating my
hardware devices and the code that runs them.

>> For me it's a matter of how one would budget a move from a kernel X LTS
>> to kernel Y LTS, and I think that as that budget requirement grows it's
>> actually harder to actually do it (and convince management), acting as a
>> negative incentive to stay with whatever works now.
>
>If the drivers are static enough to only be getting bug fixes
>surely the rest of the kernel is a massively more substantial
>concern?

They're not too static, and sadly them being less tested means I'm more
worried about drivers than core kernel code.

Sure, the core kernel is also a concern but as I've mentioned above, you
will pay the price for re-testing core kernel stuff anyway.

--
Thanks,
Sasha
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
