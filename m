Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC18602D3
	for <lists@lfdr.de>; Fri,  5 Jul 2019 11:04:21 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4EF5B10D1;
	Fri,  5 Jul 2019 09:04:10 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CB7B410BF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 09:04:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
	[209.85.208.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2E88270D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 09:04:07 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id m23so8506328lje.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 05 Jul 2019 02:04:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=WCNj6RlAHIwh0xKixodVtk8iA87tuEWrWyyCcMfOhFg=;
	b=YCBMl2a41KQKAaGLzmJZGfylf5lwoynOt3x+HBvq4ygz/YBFK8CTNSoHGLaImare1G
	lKjaLY5tyuFA8iks0mGFEtf+gG8tJEcnKmmejUVnbrNFUyKkzEF80M3yetxHRySQUVsH
	DDPUEGjC2htHVtxWmpa529ONiz2N99OpKfBq6Y4WXI7YBWsmrEPIw1myB1DMAaGL0Yvx
	6Ksr4iT53qYU/smWG56u8Huy1d+9NDf2Ui8O200O1LpV0JhS17tHff7GR0v95qbmX647
	1/uPkLKJvphS8ouOTwl1hojkE9KKcmRV2MCZTU4aWpuUQzJQ+2ijK2NXZEYZ5AImpBOt
	QJug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=WCNj6RlAHIwh0xKixodVtk8iA87tuEWrWyyCcMfOhFg=;
	b=ai87FRTc5lwYqrWC28ihuvZREwxMX87mmhPeYS9mMVeGwLIvR/O/7G8+Ofun/IK3gu
	vov4I+KR9jJ9XTI50ee5XLvqfSyUGLgzlphOMC8t3JWXZs211KdUxaY18mUPqz4yNr3T
	bNdzh0zKyQwc5KArlzHoaOJvoqVpOklrhiqyr09noxdHiVnML5c8SNR4M/xSO4/6jo9n
	3cNHf6nveLZ9by+2mr2D+SEPP8M3kohvw+wFU4F3RoVP3m6SAugL1Z/5UV3KVL4Ojqlb
	G8ylN3ajU2HudcEhrgyt9Pcac2S1KqBHhJAGipIBlMNqsPwkqnpeYz9pI6fnyscwPhp6
	2faQ==
X-Gm-Message-State: APjAAAVHPnTeu6ff2WqD0gr9uw6lB8zbZUnf/bW9mMqxefELDSf3W9n5
	Cz5koAYDcTLILLXyKTkqkITDpIEZyLJj4Xi1giD6ow==
X-Google-Smtp-Source: APXvYqwHW7/dgRgGr2jRyLnW6/5X7XqH4zTma4K68Rw8wFFTZ32n6pOx3ZLhKHdFAUa5but0vqaNKGj1hdnlP6GSZQw=
X-Received: by 2002:a2e:a0d5:: with SMTP id f21mr1587127ljm.69.1562317445353; 
	Fri, 05 Jul 2019 02:04:05 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
	<1562080257.3321.19.camel@HansenPartnership.com>
	<1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<20190703085620.GA5007@pendragon.ideasonboard.com>
In-Reply-To: <20190703085620.GA5007@pendragon.ideasonboard.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 5 Jul 2019 11:03:53 +0200
Message-ID: <CACRpkdaaLiJnHeppy9fq0ymeoJ1oyB6G6VHyNG-NFosze=Oq_w@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
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

On Wed, Jul 3, 2019 at 10:56 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:

> I may have missed the obvious, but while this should work great for
> patches applied with git-am, what's the expected workflow for patches
> written by the author of a pull request ? I certainly post my own
> patches for review on mailing lists, but I don't fetch them back from
> the list before sending a pull request. Do we want to move towards a
> model where maintainers should retrieve their own patches from the lists
> (or from patchwork) ?

This is what I do in DRM as this subsystem requires the list ID.

I agree it's a bit impractical.

Yours,
Linus Walleij
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
