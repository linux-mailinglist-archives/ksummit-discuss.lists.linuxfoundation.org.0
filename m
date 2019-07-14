Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC9367E66
	for <lists@lfdr.de>; Sun, 14 Jul 2019 11:35:36 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4F7A623C6;
	Sun, 14 Jul 2019 09:35:19 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 046D423BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 14 Jul 2019 09:35:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4FFF471C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 14 Jul 2019 09:35:14 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
	[82.4.196.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 92D1120838;
	Sun, 14 Jul 2019 09:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1563096914;
	bh=vv7GmwingwrLvC26pGA6a3kJFxoOStuH80qeFq2tQCo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=UoDGpfy9qdHmtK9UcobZZzuq3Lun8G2oqaJPGC4z4YVRtkvV4U2iqJvLOJdTGIHPl
	Z7aBpWS8pX7fuhXk0R9JpJIW6iJ6MzcuzrWI37VTdQ1WUmsTiZ7tpMjRiPqs8ccJAY
	/ixN/QrYhzGFdmm0x8SkFgnFq2NTFao/Eepsdwkw=
Date: Sun, 14 Jul 2019 10:35:09 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Wolfram Sang <wsa@the-dreams.de>
Message-ID: <20190714103509.2dd72c90@archlinux>
In-Reply-To: <20190706142738.GA6893@kunai>
References: <20190706142738.GA6893@kunai>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
 meaningful
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Sat, 6 Jul 2019 16:27:38 +0200
Wolfram Sang <wsa@the-dreams.de> wrote:

> In the parts of the Kernel I work with, reviews are usually given by a plain
> tag. I think this is not enough to keep a good code quality, so I'll start with
> my theses first:
> 
> 1) we need a better distinction between Acked-by: and Reviewed-by: and encourage
>    stricter use of that
> 
> 2) Reviewed-by should have a description of the review done (and the review not
>    done)
> 
> 3) trivial patches should rather get Acked-by
> 
> 4) failing the above should be constructively criticized
> 
> 
> Some more words about each item:
> 
> 1) I am definitely not striving for a clear line, that's impossible. Yet, from
> what I experience, the overlap between the two became large. It reduces the
> extra value a Reviewed-by should have.
> 
> 2) A short paragraph will usually do. Of course, trust helps a lot, but it
> doesn't solve everything. Trusted people can be in a hurry, too, etc. And for
> people I don't know, the plain tag doesn't tell me much. Examples for short
> descriptions: "I can't say much about the media part, but the I2C part is
> proper" or "I also checked the documentation and I think this is a good
> approach to overcome the issue" or "All my concerns in the preceding
> discussions have been addressed"
> 
> 3) Again, no hard line on what is trivial can be made. Still, I think it will
> add to the extra value of a review tag if it is only applied to something which
> is non-trivial, so we should try to have a better distinction.
> 
> 4) We are in such a need for people reviewing that it can be challenging for
> maintainers to be picky about reviews (you can partly include me here). A
> kernel-wide movement aiming for a better distinction between ack (= looks good)
> and review helps both maintainers and developers, I think.
> 
> These things will hopefully help me as a maintainer to better evaluate trust
> for a patch based on the tags given. So, I will try that in the I2C subsystem.
> I would prefer, though, not to be an island but to have something which is
> accepted kernel-wide.
> 
> Disclaimer: I am mainly active in the drivers section of Linux. If reviews are
> handled differently in other parts, I am all ears.
> 
> Well, I am all ears, anyhow. Opinions?
> 

To throw another element in here, as a maintainer, the level of review
done by myself varies a lot depending on

1. Trust of the submitter.  I won't check register definitions against
   data sheets from someone whom history has suggested is careful.
   When the submitter is someone new to me, I'm much more likely to
   go through these with a fine toothed comb.

2. Reviews from others.  This is the scalability question.  I have a
   number of very good reviewers for my corner of the kernel.  I'll take
   a much more superficial look at new code if one of them as given a
   reviewed-by.

3. Chances of side effects.  Core code patches always need (ideally
   multiple) thorough reviews and even then I'll take a careful look
   at them and sometimes spin up some additional tests.

I'm guessing many others follow a similar 'risk' assessment based
approach.  Should we be reflecting that in the tags that maintainers
add?  Normally it's all just hidden in a signed-off-by.

Of course, we can take the view that this info is mostly useful
to maintainers anyway so there would be little advantage in
recording this information. I'm curious as to what others think
on this...

Thanks,

Jonathan

> Kind regards,
> 
>   Wolfram
> 

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
