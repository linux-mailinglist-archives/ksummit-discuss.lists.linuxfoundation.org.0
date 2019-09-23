Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F82ABBE98
	for <lists@lfdr.de>; Tue, 24 Sep 2019 00:45:55 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2988AC91;
	Mon, 23 Sep 2019 22:45:40 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E3265C7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Sep 2019 22:45:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6761787D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Sep 2019 22:45:37 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id w10so8865578pgj.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Sep 2019 15:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to;
	bh=dD9byLk1Tx9Plup+AvdF7bH1lsfwrv+hU6TjIHJ7AiM=;
	b=SQc545BqocTTaFcprLPMeYKs+DwL+h5wFYyUGD7hkbhugHlAlchPy+ZX2YczzUFeqb
	5CHXZxMteiGd5s9v/KLdzmHPPn/M44AyNpl9J2jxD/aJraq6skMQyGTjS9XvUIcOWU9E
	wYc9FZbbFurWaixF9kTE8Ejzzcma+2oJjJFao=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to;
	bh=dD9byLk1Tx9Plup+AvdF7bH1lsfwrv+hU6TjIHJ7AiM=;
	b=FabdT/4JbJc5ERynSE6n88vyWYSlYGBIeCLePSVgEe3ffg6iz80lEFFbetBytz3Wca
	P0i7smGrALVr1Ncmsx0umGNXQ4zaa1jBVOIUvaJ5p4OTjjZqp1CIItnkfPn9U/d+HFtE
	/OZYod2F8pf0iJA/yxTJ/dNSJiIAD+QCbW8ZFhG7fj1tXn2SgCz4m08MjJL4DuGmMUr/
	UaACCc6xxfHkSK64FTehgwHhk2wbkMn+JVAhJg6ot1huZ/1rowkeiBBZs6VJF5j/Lm5j
	urvDsKbZVrBil4+nNMXEDZ2vwtd650Bo+9N6k0o9D04bK7Gm9ZO/IMnBEHcraRMlZJ0+
	lGEg==
X-Gm-Message-State: APjAAAV6BDEG8WuJNaLcbihpX2cXTbgX3IpsruodWHl2nwaUXnqgN3ea
	v2QDAkx03MpXta2FtXEaKucygg==
X-Google-Smtp-Source: APXvYqwi9Em13OLwso62pTOFMS3xLV7frTZ4jn4ACdyWpI9Z1AHz7htTIXaZ1mjKZWkmfq15rkw8zA==
X-Received: by 2002:a17:90a:c244:: with SMTP id
	d4mr1949950pjx.129.1569278737040; 
	Mon, 23 Sep 2019 15:45:37 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
	by smtp.gmail.com with ESMTPSA id
	16sm12875244pfi.55.2019.09.23.15.45.35
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 23 Sep 2019 15:45:36 -0700 (PDT)
Date: Mon, 23 Sep 2019 15:45:35 -0700
From: Kees Cook <keescook@chromium.org>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <201909231544.9A0328AE8C@keescook>
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<201909162032.F4462D3@keescook> <20190917102817.263517b5@coco.lan>
	<201909170930.B8AD840@keescook> <20190918082326.49a19a24@coco.lan>
	<20190921131307.77d01ebb@lwn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190921131307.77d01ebb@lwn.net>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org,
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

On Sat, Sep 21, 2019 at 01:13:07PM -0600, Jonathan Corbet wrote:
> Also, that file is nearly 18K lines long.  If some unsuspecting person
> generates a PDF and prints it, they're going to get something along the
> lines of 300 pages of MAINTAINERS, which may not quite be what they had
> in mind.  It costs (almost) nothing to put that into HTML output, but
> other formats could be painful.

Is this something that can be specifically excluded from the non-HTML
outputs? (Or rather, specifically included in only the HTML output?) I
don't see a way to do that exactly... maybe in my RFC only the html
target would get the "real" file?

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
