Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C5CB69B9
	for <lists@lfdr.de>; Wed, 18 Sep 2019 19:39:57 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D5FA2D3D;
	Wed, 18 Sep 2019 17:39:36 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 02A54C90
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Sep 2019 17:39:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AED7D875
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Sep 2019 17:39:34 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id x15so246085pgg.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Sep 2019 10:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to;
	bh=OQtIFGeVkTt+XnxHkc+z9XK9rrx2CvqMTzjHAAqCAq8=;
	b=iPan1dxijBNbxrzcel3IP3NxEFIQ2DpMHg5pbTDR5WG/DxgVrD/XO0BFi2G9SmHtr0
	hsfgs+usig0n+bpbkTCWO9yIT/Zgxec7IWQNnOYFvguH1z1hjPScLIXLyHH3BYINTuZ3
	GYQwPrlYz6/3tZvW4BionbaKlmM548qDUogr4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to;
	bh=OQtIFGeVkTt+XnxHkc+z9XK9rrx2CvqMTzjHAAqCAq8=;
	b=UGYX6QitPbT6Kib4vjMd4r8JNdSRehtQWBeF3pXfKpmVuM2SKo7PKTsIdkpYTAaKuJ
	ozH4hHy3uqfBpo/Iz7zPa2YTuyomZQOF/Co5k5WDtGdn1ChB5so7AHq9HFe8SI2zAIbz
	C8lVQqvxCVvEoQUxpaCE+/DtdtIq4XaqC2oakIksx91d5u2AN0kzWxAl4JlEhEfD0EXg
	xcBRuRD6VdItBQny9oZ66tPEGulepVibPgl2ETC1ml1DudSDgWSTSIHxH65muuzy4OPd
	M9aVvQpCWnmCbjpiPysUophX2HtP5hswe5mWJiu6JLIElMYTmSlWzCjIF9CQn49n9A6C
	UZsQ==
X-Gm-Message-State: APjAAAVgA6lqdwuBHrfzQaHpNgiCkeeJPhYDI05XiEbnFzMEk0acxbjM
	CmqhphKo5ws0uEO6OXMPJPeIDw==
X-Google-Smtp-Source: APXvYqwG2qRrTADhtT/P1eKuAfeGeBIbdGOL68Nkf2bZNgg59ymVsVmtILP43efvQ1h66nMbXYEffg==
X-Received: by 2002:a17:90a:1c7:: with SMTP id 7mr5043331pjd.95.1568828374393; 
	Wed, 18 Sep 2019 10:39:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
	by smtp.gmail.com with ESMTPSA id
	g19sm6797067pgm.63.2019.09.18.10.39.33
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 18 Sep 2019 10:39:33 -0700 (PDT)
Date: Wed, 18 Sep 2019 10:39:32 -0700
From: Kees Cook <keescook@chromium.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <201909181033.928B3F498D@keescook>
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<201909162032.F4462D3@keescook> <20190917102817.263517b5@coco.lan>
	<201909170930.B8AD840@keescook> <20190918082326.49a19a24@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918082326.49a19a24@coco.lan>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] single maintainer profile directory (was Re:
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

On Wed, Sep 18, 2019 at 08:23:26AM -0300, Mauro Carvalho Chehab wrote:
> You can't simply rename MAINTAINERS to .rst and let Sphinx handle it,

Right! Sorry, I meant what you'd suggested earlier: having a script
convert it at doc-build-time.

> The latest RFC about that with I sent was this one:
> 
> 	https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1238576.html

Cool, I've found it on Lore now too:
https://lore.kernel.org/lkml/20160923120733.546a4b7a@vento.lan/

I think having a script generate the entire thing might be better
(instead of having duplicated instructions at the top of both files),
which I see is what Joe suggested too.

> +.. include:: ../../MAINTAINERS
> +   :literal:

Nah, let's do a full make target as you'd suggested back in that thread.

I'll give it a shot if you don't beat me to it. :)

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
