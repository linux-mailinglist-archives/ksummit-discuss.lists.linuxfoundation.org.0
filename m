Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 397D77449E
	for <lists@lfdr.de>; Thu, 25 Jul 2019 07:01:20 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EC3FD1625;
	Thu, 25 Jul 2019 05:01:06 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 04F121614
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 25 Jul 2019 05:01:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
	[209.85.210.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A4324F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 25 Jul 2019 05:01:04 +0000 (UTC)
Received: by mail-pf1-f177.google.com with SMTP id y15so22082582pfn.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 22:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=JtQQz79sq4UHhJlUb9XZRV1ExmiMfJ8YLpq6UjBCHeM=;
	b=F0nb8EhTZV3qCmzQn82tn5fFWGLk7xBkGUKDr9epxnhanFVXAPQoSdbBfLd2Oc5xPP
	QPJdyQlJS05XzeDu5VKYJXU8eTTp2o/qkawYXBKZ3cps1dwX//6UNqtfYmykmyZb+f1Q
	9RpWoYnSFbbMjKK5BMIwq2mX52uEshJh23sE2oygP+joYUd1bB4WtmirdqmdMsbL/tWy
	9A6A5gEtFyLKnYpKykMn7Yo/P9kC+Jh/3L6r73n38uygAbI9DqLpdmHvbn7JguXumuFK
	wphP8HvtYKnUH0fl7ZKPBLFHgPH5Xy8C8zIG211H8jAGBTy8sqgKDZKi0yCNQhcsiZbN
	aBQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=JtQQz79sq4UHhJlUb9XZRV1ExmiMfJ8YLpq6UjBCHeM=;
	b=ON247JeH8jPmrqfrBjQM7U2jqtrya7BXrlegrGo9Rtb3f1LTjI7rjdsPspywS8Qab2
	aEcFpG7UIDRuQRCuvp65xGrQxcEHvBpi5m821OT08bDK68jSYj78eRhdNRrZQ9LV3wWn
	g8u+U+APdMxbHNad5VO9FQ0HsYaYFDxykfe4sMF0xY1gHneVoCGFKkug78XW0dw90mP4
	FZMZ0bAadsEE3chU4ZwiC0rqjGDTsQPN92sP0d0K48AC8CoaeKYA/fcMq7XIaVlvIrxT
	XzWzp19LcttLnRwTWwOBiNvbJckjEbPToAgNlzWTiUER1PHCbhiq8VDMHV2wVgAGBAOO
	E7Vg==
X-Gm-Message-State: APjAAAXxObt9PN4GvghrdHPOky5vBdY5pXzDYMTOagqQxOm/pyZtmPSU
	qPWUeaxLU71++HkeGMLOiD4=
X-Google-Smtp-Source: APXvYqy+l8ctHN6oBSBBGPh9GXvqD71hKD9oo+wFchUn/F/IECgV+anYtPtaDqkYlNVHelc0EU0wTg==
X-Received: by 2002:a63:bf01:: with SMTP id v1mr82819204pgf.278.1564030864254; 
	Wed, 24 Jul 2019 22:01:04 -0700 (PDT)
Received: from localhost ([175.223.30.234]) by smtp.gmail.com with ESMTPSA id
	z68sm44178757pgz.88.2019.07.24.22.01.02
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 24 Jul 2019 22:01:03 -0700 (PDT)
Date: Thu, 25 Jul 2019 14:00:59 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Jan Kara <jack@suse.cz>
Message-ID: <20190725050059.GA30226@jagdpanzerIV>
References: <20190530055947.GA29812@mit.edu>
	<20190724055226.GA15444@jagdpanzerIV>
	<20190724080347.GA12744@jagdpanzerIV>
	<CAOQ4uxhdJDnTiANsC4Cv42A5ooeYaTphtGvZgP9Wvp+LCCh1NA@mail.gmail.com>
	<094f7a8233152e80f34b45982058b599d605864f.camel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <094f7a8233152e80f34b45982058b599d605864f.camel@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>,
	Trond Myklebust <trondmy@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Linux kernel SMB server (CIFSD)
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

On (07/24/19 06:55), Jeff Layton wrote:
> (cc'ing Trond)
> 
> Trond has been driving those patches more recently. He posted a revised
> set of them recently, and they still use fsnotify to detect unlink
> activity:
> 
> https://www.spinics.net/lists/linux-nfs/msg73692.html

Jan, do you have objections?
Would be great to have fsnotify export patch in linux-next, maybe.

	-ss
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
