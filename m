Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A48E218D43
	for <lists@lfdr.de>; Wed,  8 Jul 2020 18:43:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2904C897DB;
	Wed,  8 Jul 2020 16:43:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0FzG3vqSyKqf; Wed,  8 Jul 2020 16:43:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6DB3989788;
	Wed,  8 Jul 2020 16:43:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 34430C016F;
	Wed,  8 Jul 2020 16:43:18 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 01041C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 16:43:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 66420852E9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 16:42:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fnG8c4JQ4HGl
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 16:42:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9E4FC85233
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 16:42:34 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id d18so5608354ion.0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 08 Jul 2020 09:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=AJF6ghJhY51xyqqJfdaCuA4fh0Dk+yVUi+dArBV5bG0=;
 b=EYFpxsH2IaEtZNWMgMEazNrufq+70MnqTY9RRKm0YJR1uGc6MnDQayIEWhud6bu3oZ
 5O/yIzFoHA9G67uAj+PHN++kiRvvucErUMinOTG8Oiy28xu08qNjMy/6nyIeLJKf/VIM
 o7p+Q89EWGS8hX4zaXRJrIlr0GkRCuz40j4+s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AJF6ghJhY51xyqqJfdaCuA4fh0Dk+yVUi+dArBV5bG0=;
 b=s0nV9hj6YJh8ppyHFhUkegcSoJjNpWCPiwRn0pBO2FSvBHZeL7PK+uL9TdM+TVpfkf
 hHoFuDbNTYi/M13dddrdR618b1FeJkT/ffmsAePnZnPFPY7trwNTzLonLltBJ2AMGURY
 RvocqqG3pQf2cbtDOMlryQB+pYqUXFLU1pWAcDYCpUSXhet2iyz6xJTBhPoWiI1aurYB
 JqV9mM9Ki3zp71yxDNcmbPEensmxxx7gNtXOU3J5bJJP5ORjx2uotHMOWfysDHBwWU5r
 104IDcJ9uSDtQN9BIVLjyFj4ifP165QHZhyiPJIhT3ND16Rw271IHA0V3Al13l0HMFuT
 Phlw==
X-Gm-Message-State: AOAM531paoxBkLPxaqJJtTCjVrkKWkvZAm9703yrlPFBf2ke5X5JgwiC
 ocT8WXQItXQejXd/8LjRLVWwyqRw
X-Google-Smtp-Source: ABdhPJyDDZj4AdNOQWVxoOj+aPSSFpHOVQ0M1bYCH7ln+iGyQeokXxFNQNF8og21xL8rlPHb5eTZgA==
X-Received: by 2002:a6b:e20b:: with SMTP id z11mr36687689ioc.2.1594226553920; 
 Wed, 08 Jul 2020 09:42:33 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id z20sm342436iot.15.2020.07.08.09.42.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jul 2020 09:42:33 -0700 (PDT)
To: Dan Williams <dan.j.williams@intel.com>, corbet@lwn.net
References: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <b0d5cc51-a675-858f-6897-03ab9a63af1f@linuxfoundation.org>
Date: Wed, 8 Jul 2020 10:42:32 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
Content-Language: en-US
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>,
 Dave Airlie <airlied@redhat.com>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] [PATCH v2] CodingStyle:
 Inclusive Terminology
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On 7/8/20 1:23 AM, Dan Williams wrote:
> Linux maintains a coding-style and its own idiomatic set of terminology.
> Update the style guidelines to recommend replacements for the terms
> master/slave and blacklist/whitelist.
> 
> Link: http://lore.kernel.org/r/159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com
> Cc: Jonathan Corbet <corbet@lwn.net>
> Acked-by: Randy Dunlap <rdunlap@infradead.org>
> Acked-by: Dave Airlie <airlied@redhat.com>
> Acked-by: Kees Cook <keescook@chromium.org>
> Acked-by: SeongJae Park <sjpark@amazon.de>
> Signed-off-by: Olof Johansson <olof@lixom.net>
> Signed-off-by: Chris Mason <clm@fb.clm>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> ---
> Changes since v1 [1]
> - Drop inclusive-terminology.rst, it is in the lore archives if the
>    arguments are needed for future debates, but otherwise no pressing
>    need to carry it in the tree (Linus, James)
> 
> - Update the recommended terms to include replacement for 'master' and
>    'whitelist' (Kees, Andy)
> 
> - Add 'target' as a replacement (Andy)
> 
> - Add 'device' as a replacement (Mark)
> 
> - Collect acks and signed-off-bys. Yes, the sign-offs are not reflective
>    of a submission chain, but I kept "Signed-off-by" if people offered
>    it.
> 

Dan,

Looks like you missed my Signed-off I sent for v1

Please add my Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>


thanks,
-- Shuah
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
