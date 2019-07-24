Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 4743672975
	for <lists@lfdr.de>; Wed, 24 Jul 2019 10:04:10 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 635DFD83;
	Wed, 24 Jul 2019 08:03:56 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5A10A7F6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 08:03:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8BEA9709
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 08:03:52 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id i18so20806966pgl.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 01:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=fcmAfp4qNdLVKRO7j2TwxFzB/PK1m/WF3oGJPbKjhnQ=;
	b=UT4sGnIvtiLXUbAQcpkS+mYH5kIe/VkAfptCUqaa67p+47aV6e2siUt7R0UaOjFSvp
	zdW8m+fUaRHrRsXkOVhufuN/JUbALyOMn0xb8Y/0VrWnIVfig+neDexL1mlxUuFIVjNq
	E8tyIIcXguWUTtYKSn1YZmNEnb303vgOFOdwkKBSJA8MkKKmQ16PBdOSgCWs4TMa/DnZ
	lZJ6DSdRNZO3oqheVS3It7LFknwfqLcVd2F3LgdPGcTn6TknRw16jydj3Qp1gAXehCvv
	3Cgzy6fPkh1naemB0lROyECEfMnTgqhu54WMOcU0eFe0Q6tY1zvKi5st8KPpMLGobXBk
	+ybA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=fcmAfp4qNdLVKRO7j2TwxFzB/PK1m/WF3oGJPbKjhnQ=;
	b=LTSBaFH4fEjmWjh8sam+brSZOsKBx4d39JY/XMCoNUlJPSUXW1xi61MhRGYomAseCV
	H9T8YfGKTQm0fTTGeEbTvQGtxkPx1YWoiBcX65xcNih+aYXXsVmqX5yyIfWmwy3vGWXt
	k1b2w18+UjIzJ6XpNdf1QUnP62TI5JvK/hqfnbQ/TiAF7dkZ+m6+FUOXu3aZQ4/paZUM
	9ks0mg3m9lRjHnTx0k9v1BX/MG1IlyEXbqY1T8Q4rtCLc6BSPoizAsS3o3J3tWmxu9YI
	AJof6bzSrwNy/8BjePaFYJcSGtZLGvKWYnfDd28ZE5boBzZYVi3yVDGVewhvRwtxMpAm
	LqVQ==
X-Gm-Message-State: APjAAAUJuA+tGbUOPSk3J59l/IaAStspNTs/x1IpD4h2z0v95/TT758g
	f96Z2totE15IL30lGqohOo9Wy7qc
X-Google-Smtp-Source: APXvYqzSl/2L/Ydafp90b0rn11zw8i99C/sKebN1ZybbQmgxgO9B/v3/0Wy4HQLvtIF8GNV/gZP0zA==
X-Received: by 2002:aa7:8e18:: with SMTP id c24mr10062392pfr.24.1563955432214; 
	Wed, 24 Jul 2019 01:03:52 -0700 (PDT)
Received: from localhost ([110.70.52.108]) by smtp.gmail.com with ESMTPSA id
	q63sm59864185pfb.81.2019.07.24.01.03.50
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 24 Jul 2019 01:03:51 -0700 (PDT)
Date: Wed, 24 Jul 2019 17:03:47 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Message-ID: <20190724080347.GA12744@jagdpanzerIV>
References: <20190530055947.GA29812@mit.edu>
	<20190724055226.GA15444@jagdpanzerIV>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724055226.GA15444@jagdpanzerIV>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Amir Goldstein <amir73il@gmail.com>
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

On (07/24/19 14:52), Sergey Senozhatsky wrote:
> On (05/30/19 01:59), Theodore Ts'o wrote:
> > From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
[..]
> To extend the topic with some discussion points:
> 
> - We are facing a rather familiar problem. Basically, SMB2 CHANGE_NOTIFY
>   [1] is something what fsnotify normally does, except that we can't use
>   it in cifsd kernel module. I see that NFS guys had [2] same issues some
>   time ago.
> 
>   So the question is - how to do fs notify style monitoring in a kernel
>   module (nfsd, cifsd)? Any chance the kernel can start exporting fsnotify
>   symbols?

I even looked at LSM hooks, because they do what we need - invoke
creat, open, truncate, chmod, chown, unlink, callbacks. But, first,
I do realize that LSM was not meant to be used as some sort of fsnotify
replacement, and, second, LSM symbols are not exported anyway :)

	-ss
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
