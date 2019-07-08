Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 4534861DAF
	for <lists@lfdr.de>; Mon,  8 Jul 2019 13:10:36 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 05D602410;
	Mon,  8 Jul 2019 11:10:24 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A46E5238A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 11:02:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1AD66883
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 11:02:10 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 913BB20861;
	Mon,  8 Jul 2019 11:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1562583729;
	bh=VxHlwea/bB1sMkwyohyH7z3dDQosdm+ppDrc9oDbEIo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gOaCUHcSvxFUIjGRvDEeUnN7XH7zWrjZwF8hZmy9/y3kOKdzhISmJOZIiyp1nJ0od
	Y8iMsYl3UN9c/WkJ5qXkVrNNk4bswlc2+Mwg0risRMqfySDaOSioBVWPyFUlitoZlB
	9gF7U/AZzCy9pCXOf8oMutDT5RmlQBKySLv32BNw=
Date: Mon, 8 Jul 2019 07:02:08 -0400
From: Sasha Levin <sashal@kernel.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20190708110208.GN10104@sasha-vm>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
	<20190706003214.GE20625@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190706003214.GE20625@sirena.org.uk>
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

On Sat, Jul 06, 2019 at 01:32:14AM +0100, Mark Brown wrote:
>On Fri, Jul 05, 2019 at 04:12:31PM -0400, Sasha Levin wrote:
>> On Fri, Jul 05, 2019 at 05:41:42PM +0100, Mark Brown wrote:
>
>> > I'm a bit worried about these, especially pushed together - one
>> > of the things the AUTOSEL stuff does quite often is pull in
>> > driver changes and our coverage of drivers is especially weak.
>
>> Our driver coverage is indeed weak, but I don't think that the solution
>> is to leave drivers/ alone. On the contrary, I think that making
>> drivers/ move quickly together with the rest of the kernel will
>> encourage vendors to up their testing game.
>
>I'm not saying leave it alone, it's more a question of how
>aggressive we are about picking up things we think might be
>relevant fixes but haven't had some sort of domain specific
>analysis of.  Testing is a good way to mitigate the potential
>risks here.

I agree, and for various subsystems and drivers where the maintainers
volunteer their domain specific expertise to send backports to stable, I
have "blacklisted" it from AUTOSEL since indeed it's a much better
option.

>> This came up in the last MS, and the agreement there was that we expect
>> stable kernel users to test their workloads before throwing it into
>> production.
>
>That's kind of the problem - if people are doing testing and end
>up finding problems coming back in the stable kernel that's the
>sort of thing that encourages them to not just take stable en
>masse as we say they should.  Part of the deal with stable is
>that it is conservative, people can trust it to be a low risk
>update.  That's not happening now as far as I'm aware but it does
>worry me that it might happen.

Right, and the rate at which AUTOSEL commits are reverted is lower than
commits that are actually tagged for stable. If AUTOSEL commits on their
own were being reverted left and right I'd agree we need to tone it
down, but I don't see it happening now.

>> If we were to start avoiding driver updates, it would act as an
>> incentive for people not to upgrade their kernel.
>
>I'm not sure I follow the logic here?

The way I see it, the lower your "effective delta" is between to
kernels, the easier it is to move forward. For example, if I have a
product that runs on 4.19 and uses all our core kernel code + 10
drivers, and I know that those drivers had most of the fixes backported
to my LTS tree, I'd feel much more confident going to 5.4 knowning that
I already have most of the patches that come with 5.4.

For me it's a matter of how one would budget a move from a kernel X LTS
to kernel Y LTS, and I think that as that budget requirement grows it's
actually harder to actually do it (and convince management), acting as a
negative incentive to stay with whatever works now.

>> Right now I'm working with a certain hardware vendor who does a crappy
>> job at tagging fixes for stable, and it's horribly painful. I end up
>> spending time triaging a bug, reporting it to the vendor, only to be
>> told "oh grab this fix from upstream".
>
>> This user experience is just bad, and I can't imagine how difficult it
>> is for users who are less familiar with the kerenl.
>
>Well, the advice from the upstream community has always been that
>you should track upstream and I'm sure people will be praising
>this vendor's upstream focus but obviously that's not always
>terribly helpful or realistic for production systems.  In my
>(mostly embedded and consumer electronics based) experience
>support for older kernel versions is generally part of the
>commercial discussion with the hardware vendor, there's an
>understanding that the hardware will only get bought if it works
>on kernel versions that are useful to the customer or (depending
>on the power relationships) that the customer will use kernel
>versions that the vendor supports.  Sometimes, especially for
>smaller customers, that doesn't work out but those are usually
>the people who are more likely to track upstream and/or do
>considerable testing before fixing a version and generally are on
>their own.

I have a different experience with this. I'd like to think that we're a
bigger customer and this process wasn't working too well for us. My
thinking was that if it's broken for us I can only imagine how bad it is
for the smaller customers.

>This is where the out of tree patch stacks from vendors come from
>- everyone agrees that they'll use one or more given kernel
>versions, enterprise distros or whatever and then the vendor
>commits to supporting what's agreed but often that doesn't just
>include bug fixing but also new features (or entirely new bits of
>hardware).  As a result those vendors are shipping their patch
>stacks out of tree, users are getting their bug fixes from there
>and those vendors are not finding much user demand for vanilla
>LTS as a separate thing.  They may even find conflicts with it an
>annoying hassle.  Frankly for them upstream support is often a
>bit of an investment in reducing the cost of future out of tree
>patch stacks and giving a longer general market life to products
>rather than something customers directly demand.  None of this is
>ideal from an upstream point of view of course but it does
>function for people.

This is where our story is different, which might explain my experience
being different: we usually require vendors to upstream everything, and
so they do. This means we don't have much of a out-of-tree patch
stacks/fixes from the vendor directly, and we expect to pick up patches
via the regular stable process, and that didn't happen all too well so
far.

--
Thanks,
Sasha
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
