Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 864731DBC48
	for <lists@lfdr.de>; Wed, 20 May 2020 20:06:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C7DC486FC5;
	Wed, 20 May 2020 18:06:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XSE5FUcUwUDl; Wed, 20 May 2020 18:06:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12ACA86FF8;
	Wed, 20 May 2020 18:06:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DAFBFC0893;
	Wed, 20 May 2020 18:06:05 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C41FCC0176
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 18:06:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AB1FA203AB
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 18:06:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2o8OtMVFweKd
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 18:06:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 597C620003
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 18:06:01 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id m7so1662226plt.5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 11:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=3Ghakkzn2QopqaOA8SafMj9Og6XJ6dLKngRapAbmeDM=;
 b=i/NqQtJB8t/yg1XsQxvCFcr+u61Oad09vdnZ2b5jFLf1TAgozN38PthM41M61apvnn
 L1FYNB70J0uMoFofScM2JK/M92SDHIX0D4AfOTrbCXdq3KCUf2+zBtd+8xdUILH+07lV
 ZIp7jjF6ZHAKw8kHnojPdJAfB8arh7r04iM0k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3Ghakkzn2QopqaOA8SafMj9Og6XJ6dLKngRapAbmeDM=;
 b=jR12fKEgPrwMqHwoz4Lp1nEyXXHXvHlVbccLMy3AMfM1mW4lrJZf1KValNhwvP/T8v
 PNHuVSkmkkwFWf2gpGWyUwyf6ySSN213HvMNf0vndqpmH/jmU4oGNgTJZS1CgRBsIa80
 JUKzpYcPaLmCtXJJbGg75eJNofCALjXGJZRZxpDdPM2Nx7LIhdhwmaWd/0KIYtHvhJP+
 sVeW14uDgLmxOYaBUblrW6VHeWjOOgXcpmZarjk9sU5hfC5Q4gl1Wdw49f3LDKf+/c4B
 odmk8igyiWLCMx+w+Ggp18SD412aE7K1eRWqhlg/PijD5B3KX9VhlQicDbsLYqfSAWy5
 w91Q==
X-Gm-Message-State: AOAM533VdaE4Ysnp35EmqMPoqP6g88eEcfc2FIf8aUtz9/Y0ZiHDCyIO
 rYozyu6mwwxHPCv9qs3OwxVBro08s2dUJw==
X-Google-Smtp-Source: ABdhPJxPzSBI+uAHcELYMCEFt7yTdg4JZiU7Pf6pDG4B3QNnzpvPJBNeBKTGAvzpCwwKBimaLHguBA==
X-Received: by 2002:a17:90a:384b:: with SMTP id
 l11mr6887017pjf.89.1589997960297; 
 Wed, 20 May 2020 11:06:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id g1sm2517254pfo.142.2020.05.20.11.05.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 11:05:59 -0700 (PDT)
Date: Wed, 20 May 2020 11:05:58 -0700
From: Kees Cook <keescook@chromium.org>
To: Al Viro <viro@zeniv.linux.org.uk>
Message-ID: <202005201104.72FED15776@keescook>
References: <202005200917.71E6A5B20@keescook>
 <20200520163102.GZ23230@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520163102.GZ23230@ZenIV.linux.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] seccomp feature development
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
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
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Wed, May 20, 2020 at 05:31:02PM +0100, Al Viro wrote:
> On Wed, May 20, 2020 at 09:17:41AM -0700, Kees Cook wrote:
> > As recently outlined[1], there are are a number of seccomp topics that
> > need discussion:
> > 
> >  - fd passing
> >  - deep argument inspection
> >  - changing structure sizes
> >  - syscall bitmasks
> > 
> > Specifically, seccomp needs to grow the ability to inspect Extensible
> > Argument syscalls, which requires that it inspect userspace memory
> > without Time-of-Check/Time-of-Use races and without double-copying.
> > Additionally, since the structures can grow and be nested, there needs
> > to be a way to
> 
> ... catch and kill the bullshit ABI "enhancements" that would attempt that
> kind of garbage.  I'm not sure why that is seccomp-related, though...

We already have structs passed to syscalls that contain pointers to yet
more structs. Do you mean those should be disallowed? (Personally, I
would love that, but this doesn't seem to match the reality of the
design considerations of those syscalls.)

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
