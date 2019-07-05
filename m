Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA226031C
	for <lists@lfdr.de>; Fri,  5 Jul 2019 11:27:58 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C5EBC1151;
	Fri,  5 Jul 2019 09:26:39 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 71FFE110D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 09:26:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
	[209.85.208.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C860B70D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 09:26:36 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id 16so8565144ljv.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 05 Jul 2019 02:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=M3S52ERpWoi4uBPmrJtam6HZRY1Fus492m4OW0FpH9I=;
	b=AgLZVBeXfhZLEzNL9z08u6P+Taa+y8SC3FfjHuV/9+IaAMcVUC5gZenK+754WjMYR+
	TUcsHRRVfYTeadGJ8koeBOpOy+Qsu9U3odJCuxI9p2+lrfmH4LBvYzRb+25FurdMlDY4
	nW7Aqgs7+QQSdN97+hgYdzLeWNtzz/Y1cS9qw8JWdqOFlZO1aNRmIVLjtx+eJQ0SK3MM
	4fg6vhgBm4soJPhAitrqd2uCe3y3L/Obx0maAywiGbXs3m39BC+gjkj7f8lrnt+ZoFHZ
	aXQwpTS8z0nqPJ2kWb14v48n4hjnknV3tc+kNoX98RujmLKT2Wd2y4kw/mDaR7l8aXWe
	UzHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=M3S52ERpWoi4uBPmrJtam6HZRY1Fus492m4OW0FpH9I=;
	b=J/kwRayBE7ZbPeTo6TjDvrkFdHtaVZ8BX4fHelXs/tqADOi7bH/ftKGhnghQhO3UDy
	7YJuUG2m9O8cQBNj6bLCukSC7TGgW5hbd48FVfpDDa5GC60d+TwjC9V++JzKlWkMhANN
	1ieZfyfjDIKMLrZcweq9K4UCmCv513rqZTxYe+tXWh8WMdLX2/jRbO1AmPPOcaGKl7cL
	7hHLr3pxpXZNUIYRh22R9rR7x8k5aFhJmsTp395D4B6TVxtXk9cRirBUpdNyDPmPSBaM
	ljLFhmBh0Hx/ZDM1AVzZ8HQ1WPZbj/Aw20L0RvoXd56Jjql/YLjprL2j82cSpmrduwO4
	Kmvg==
X-Gm-Message-State: APjAAAUEzF/iw+/rQygH0Co6Mfo22axv5dqs2gRt9VOMz15n1LlRFzWW
	5Pn+J2suBc+CDPqLXmYAIzTVP3179ec1f7Efb6ykxQ==
X-Google-Smtp-Source: APXvYqzz9ngO7dbYmOmZuBzdZPOECD5iCdmIbwKM/R+SUHl8Z6RDo4k9L/uS2Te3YansxezRB7X86Q38mg4S1KY5F3o=
X-Received: by 2002:a2e:a0d5:: with SMTP id f21mr1642207ljm.69.1562318795144; 
	Fri, 05 Jul 2019 02:26:35 -0700 (PDT)
MIME-Version: 1.0
References: <1562080257.3321.19.camel@HansenPartnership.com>
	<1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<20190703085620.GA5007@pendragon.ideasonboard.com>
	<20190703135012.GC2041@mit.edu>
In-Reply-To: <20190703135012.GC2041@mit.edu>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 5 Jul 2019 11:26:22 +0200
Message-ID: <CACRpkdbqxwwKxjELS8WXtFHbq3L5b49XoEJjCdUOgRTNLTR_NQ@mail.gmail.com>
To: "Theodore Ts'o" <tytso@mit.edu>,
	Marek Szyprowski <m.szyprowski@samsung.com>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
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

On Wed, Jul 3, 2019 at 3:51 PM Theodore Ts'o <tytso@mit.edu> wrote:

> Personally, if there is a case where it will be useful, it would
> actually be better for developers to summarize the comments, and
> design alternatives, considered and rejected, etc., in a cover letter,
> or better yet in the kernel documentation as part of the design doc
> for a largish feature, and then if it is a cover letter e-mailed out
> to the mailing list, include a link to the URL of the cover letter
> with some text so that a human being reading the commit log will know
> that there is something actually worth their time to read, as opposed
> to being treated to a huge amount of legislative history that, at the
> end of the day, be a complete waste of time to someone trying to debug
> a live production problem causing data outages for their company.

I agree. I recently wanted to look into the development history
of the contiguous memory allocator merged in 2012. This patch set
went through 24 (!) iterations duly summarized in the cover letter:
https://lore.kernel.org/lkml/1333462221-3987-1-git-send-email-m.szyprowski@samsung.com/
it not is on mm/cma.c.

The links to the earlier iterations on gmane are dead.

It is one of the more heroic attempts to fix a very real problem
with memory management in embedded and mobile,
the second part of which is hopefully coming to a resolution
with John Stultz work on the ION destaging (ongoing).

The actual commit in the kernel looks like so:
git log c64be2bb1c6eb43c838b2c6d57b074078be208dd

I would have to dig them all out of lore one by one to get
the picture (and I guess I will). The story of CMA is a really
interesting one, and now it is part of the MM core.
Documentation/cma is pretty empty.

Asking Michal, Marek and Joonsoo who all worked hard on
this to summarize the development and make the design
and evolution of this feature understandable would be a
pretty big development task in itself so I'm not gonna.

But maybe we should just merge a document with lore
pointers to Documentation/cma for this feature, and others
of the same impact?

Yours,
Linus Walleij
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
