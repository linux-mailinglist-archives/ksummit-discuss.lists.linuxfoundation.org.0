Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C448B460C
	for <lists@lfdr.de>; Tue, 17 Sep 2019 05:36:12 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BE285F24;
	Tue, 17 Sep 2019 03:35:51 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B3754E7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 17 Sep 2019 03:35:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0AA2D81A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 17 Sep 2019 03:35:47 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id q10so1299280pfl.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Sep 2019 20:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to;
	bh=99+zP7GxijNN1oS4e2ienHwVOgdgAk8c+mmB2ytuZb4=;
	b=Ev2+WRzTW6i3EL+FVX/L+GICGoDekxtnJaboVdz3m4L1wXk7Hy4iGsqI2wv0fHQ/pl
	igotzYgY5Ld45+Mt5Wv5iumAtPGLtGXnCuQqq+nQgitoswf8UkSrOJPQPcOjtnLlmhBM
	oHOGPm8B1vXbO0tdHb9qUVuMiTVB1OgGZNYc0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to;
	bh=99+zP7GxijNN1oS4e2ienHwVOgdgAk8c+mmB2ytuZb4=;
	b=TJHOTYlmOO68C04b9RWKefWL9jLUOcUE3hpMA89X/tT1qE3F3prvNi498Ji5KgH6JF
	C/HU06V+He5EC4I2MmBYqBCfmXhMGjmA7QfQ24SdsRXRx+EM0NSr7NYmAuVhLtIKb3uc
	LZc9iT7pWvtN/JI6TLXUxxi3P2hVwSDRelk95nAGd6VRsNc7B9KlIN5pddKU/MHWBBL8
	QpWiiTp/C9LY8ThmnNbiierRcE8GdPmD601GfwCHK7LQbabHUzrQoBQNH7pcj91sFYec
	r8jEyI2gXYoDe5qYUx+Kl+1dDwHB4Bi93vLdoK35SChyc37qrESWRpShlj8XhNSdhRbU
	+wOw==
X-Gm-Message-State: APjAAAWzci2lrTotGtmjQ8CKUAcIdOIpoUCBMoUFYbd+DdgBfoWyu6Ko
	GvjaH8NeO5fFJEZRCH/T8Y8EBg==
X-Google-Smtp-Source: APXvYqyVgC1cA7I+gPK+7pX26ljT+rvrO/t27XHOHAGBBpuH7IKecOkftzW21BTVnsOz3IQWyuQVcg==
X-Received: by 2002:a62:5214:: with SMTP id g20mr1860922pfb.103.1568691347647; 
	Mon, 16 Sep 2019 20:35:47 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
	by smtp.gmail.com with ESMTPSA id
	x125sm683785pfb.93.2019.09.16.20.35.46
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 16 Sep 2019 20:35:46 -0700 (PDT)
Date: Mon, 16 Sep 2019 20:35:45 -0700
From: Kees Cook <keescook@chromium.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <201909162032.F4462D3@keescook>
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [Ksummit-discuss] single maintainer profile directory (was Re:
 [PATCH] media: add a subsystem profile documentation)
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

On Fri, Sep 13, 2019 at 01:19:21PM -0300, Mauro Carvalho Chehab wrote:
> Document the basic policies of the media subsystem profile.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> ---
> 
> That's basically a modified version of:
>     https://patchwork.linuxtv.org/patch/52999/
> 
> Applied to the new template
> 
>  Documentation/media/index.rst                 |   1 +
>  .../media/maintainer-entry-profile.rst        | 140 ++++++++++++++++++

One idea I proposed to Dan at the Maintainer's Summit was to collect all
the profiles is a single directory in Documentation/, since there are
two ways someone would want to read profiles:

1) a single profile, based on a MAINTAINERS entry which includes the path
2) all of them, to study for various reasons

The #2 case is helped by having them all in one directory with a single
index.rst, etc. Then similar profiles are able to merge, etc.

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
