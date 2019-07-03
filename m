Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E0A5E709
	for <lists@lfdr.de>; Wed,  3 Jul 2019 16:44:53 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5499110A5;
	Wed,  3 Jul 2019 14:44:42 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D5A621070
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 14:42:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
	[209.85.214.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 957B9836
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 14:42:25 +0000 (UTC)
Received: by mail-pl1-f173.google.com with SMTP id e5so1349977pls.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Jul 2019 07:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to;
	bh=klDwBdFdrXS3dgeMuDuT4Vay40F9p7ptbr+QMll7HPI=;
	b=jnT840CGIVK9pHGxr/xtrPtZb0Q8D8pi3UqBGmzVSXpOjhell1S2SpoLwhZTJ74OZD
	A8y1Qs/s8tefMT050MaXMU6jUsJQ1l9J7yCLLIjqdjry9vpZcc7Cws65ce/VvNYscRdk
	lsw0U2ALG8cmRTqbK19FXi4ZrFc/Hq7Ts0120=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to;
	bh=klDwBdFdrXS3dgeMuDuT4Vay40F9p7ptbr+QMll7HPI=;
	b=tEAJeJutf3tdTn1iOhFZidow4cbbN96bsEUu0aV4YXX4T88Vay9Fkh2nNStJBk94BE
	C1aK24YKqbw/M7vQMlLhkg5J+nmi1XltV6TiW6LW3T959CdSPgQAc80CAU0NLXTEmBHf
	PPUjrrN8W5hp52Izxmyf9l60jaUpzixevTfDz1bwG1KnmItgyAupNLoK/dmkLERULnLW
	vHRj0WwI+ZCrb6X2W0jhyDVF5o6DjRbriBeS/yLMV7TgHDQU1fZE2Pq1wUPbxV9aS9Nr
	EJ0UvKaWKnnqNSIQRXNg9XZxyFRJwmDwy9I9C18gZyD+3it1iX+DbCxU3aeSFYvw5hx8
	ChTQ==
X-Gm-Message-State: APjAAAVyh/bJaffg8hFvcv1VIrY5JIKMD/8DFtBI/UyhpmDnwYWbP8OY
	J4YG4iVFKZKaPgnDznbBhydeww==
X-Google-Smtp-Source: APXvYqz9anCoQAuBe3F8bCdSOPoJTZukngs6WuLcCM1eJWcVxsIUrKzVl5YAHR/57utedshgV6DnjQ==
X-Received: by 2002:a17:902:324:: with SMTP id
	33mr16196768pld.340.1562164945279; 
	Wed, 03 Jul 2019 07:42:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
	by smtp.gmail.com with ESMTPSA id
	x14sm3578286pfq.158.2019.07.03.07.42.24
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 03 Jul 2019 07:42:24 -0700 (PDT)
Date: Wed, 3 Jul 2019 07:42:23 -0700
From: Kees Cook <keescook@chromium.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <201907030741.648E95E8@keescook>
References: <201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu> <201907021559.FEC3922@keescook>
	<20190702231858.GK3032@mit.edu>
	<1562110396.29304.35.camel@HansenPartnership.com>
	<20190703041602.GB19593@mit.edu>
	<1562129458.29304.94.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562129458.29304.94.camel@HansenPartnership.com>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Tue, Jul 02, 2019 at 09:50:58PM -0700, James Bottomley wrote:
> My thought was actually a message-id is more descriptive because it can
> be fed into any archive (or even google) to find the email.  However,
> it's also easy to strip the message-id out of the lore url and do the
> same, so my only weak objection is the URL would be expected to be
> functional and the chances are there will always be some patch on some
> list that isn't in the archive yet.

What I like, though, is that it is a one-time retro-active fix. If we
discover a missing list we can add it, and suddenly all the URLs
referencing message ids from that list start working. :)

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
