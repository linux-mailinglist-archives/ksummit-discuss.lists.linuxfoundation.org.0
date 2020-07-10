Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7663521BF11
	for <lists@lfdr.de>; Fri, 10 Jul 2020 23:13:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1680A89CFA;
	Fri, 10 Jul 2020 21:13:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E0nwRqyOmVrJ; Fri, 10 Jul 2020 21:13:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8B3E489D68;
	Fri, 10 Jul 2020 21:13:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 35A4DC0890;
	Fri, 10 Jul 2020 21:13:41 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D6CBBC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 21:13:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C59C889D00
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 21:13:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0aubFd1kPB2T
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 21:13:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D206189CFA
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 21:13:38 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id b25so5616465qto.2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 14:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=labbott.name; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Py7sbUg6SrhS/tqtX2Sq8t6PBGylJUmZvrnUWwDIZKQ=;
 b=z2hrydleOwcHTXUTY3Zdw8+qKJdrCWfJB9WN6Em2f/LdnIx8oUqkbqEsO2E3Jn4n5c
 WGWDW79gtum6V0gRq8VNRWPBOaUoJivLznSnq94+8ARITJSAp7ghn3Vb2Ft1hRqn1a7N
 nAJjVeMEupzJ1xbWmmWyT7HWG08fr8APAxDFs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Py7sbUg6SrhS/tqtX2Sq8t6PBGylJUmZvrnUWwDIZKQ=;
 b=jXqS1+JIqjvsoTzqYa1BM2MuGEDx0dMyx+TNM/heBPw9EFq92C+8hJRyfN0ov3v/gW
 H0VZX8n4/julomb8p72+0k+abiJma5rg2GXDmvSD6OMxPV3rL3q+XZNNrc/xGFBTSRQj
 XSwEAJtZWqfFLBAWjghVLelqlv66aKAm0us+mXqnyK1RzI3i/V3b+j637gsw6cxv84fA
 mxKqN0Tnnpy8cRxpvgp6DZptGsQo8eAZ0xwSP7WBPR/KaDqrgSOC3Va/cFdXgWz9l1/Q
 +wQ/GJjTy+ugwYngUC3WtPwq0+NHo0qPXHGH7fnIN6YotAMJBHCrTVt85BOdfLrJWqxa
 19YA==
X-Gm-Message-State: AOAM53298081NyZN/vUjAEhmIjFK92yWOMbfEnV1bMESYrPpoYuJ7BwV
 7T3ZqXDgm18OgQ6Ml3x+Y1cdPw==
X-Google-Smtp-Source: ABdhPJyyT+pNMBHbp+rM/XUuxP36fWE0gYZosn0juRTh7hjb86WB84iL4vCYnrV250o29G7X0RUy4A==
X-Received: by 2002:ac8:197b:: with SMTP id g56mr52023025qtk.105.1594415617748; 
 Fri, 10 Jul 2020 14:13:37 -0700 (PDT)
Received: from [192.168.1.168] (pool-74-109-246-95.pitbpa.fios.verizon.net.
 [74.109.246.95])
 by smtp.gmail.com with ESMTPSA id b53sm9292264qtc.65.2020.07.10.14.13.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Jul 2020 14:13:37 -0700 (PDT)
To: Dan Williams <dan.j.williams@intel.com>, corbet@lwn.net
References: <159423201991.2466245.8461410729774664077.stgit@dwillia2-desk3.amr.corp.intel.com>
From: Laura Abbott <laura@labbott.name>
Message-ID: <97c24e99-9f49-f094-acfb-705c2da12a76@labbott.name>
Date: Fri, 10 Jul 2020 17:13:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <159423201991.2466245.8461410729774664077.stgit@dwillia2-desk3.amr.corp.intel.com>
Content-Language: en-US
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org,
 James Bottomley <James.Bottomley@HansenPartnership.com>,
 Dave Airlie <airlied@redhat.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [PATCH v3] CodingStyle: Inclusive Terminology
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

On 7/8/20 2:14 PM, Dan Williams wrote:
> Linux maintains a coding-style and its own idiomatic set of terminology.
> Update the style guidelines to recommend replacements for the terms
> master/slave and blacklist/whitelist.
> 
> Link: http://lore.kernel.org/r/159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com
> Acked-by: Randy Dunlap <rdunlap@infradead.org>
> Acked-by: Dave Airlie <airlied@redhat.com>
> Acked-by: SeongJae Park <sjpark@amazon.de>
> Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
> Acked-by: James Bottomley <James.Bottomley@HansenPartnership.com>
> Reviewed-by: Mark Brown <broonie@kernel.org>
> Signed-off-by: Theodore Ts'o <tytso@mit.edu>
> Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Olof Johansson <olof@lixom.net>
> Signed-off-by: Jonathan Corbet <corbet@lwn.net>
> Signed-off-by: Chris Mason <clm@fb.com>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> ---
> Changes since v2 [1]:
> - Pick up missed sign-offs and acks from Jon, Shuah, and Christian
>    (sorry about missing those earlier).
> 
> - Reformat the replacement list to make it easier to read.
> 
> - Add 'controller' as a suggested replacement (Kees and Mark)
> 
> - Fix up the paired term for 'performer' to be 'director' (Kees)
> 
> - Collect some new acks, reviewed-by's, and sign-offs for v2.
> 
> - Fix up Chris's email
> 
> [1]: http://lore.kernel.org/r/159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com
> 
> 
>   Documentation/process/coding-style.rst |   20 ++++++++++++++++++++
>   1 file changed, 20 insertions(+)
> 
> diff --git a/Documentation/process/coding-style.rst b/Documentation/process/coding-style.rst
> index 2657a55c6f12..1bee6f8affdb 100644
> --- a/Documentation/process/coding-style.rst
> +++ b/Documentation/process/coding-style.rst
> @@ -319,6 +319,26 @@ If you are afraid to mix up your local variable names, you have another
>   problem, which is called the function-growth-hormone-imbalance syndrome.
>   See chapter 6 (Functions).
>   
> +For symbol names and documentation, avoid introducing new usage of
> +'master / slave' (or 'slave' independent of 'master') and 'blacklist /
> +whitelist'.
> +
> +Recommended replacements for 'master / slave' are:
> +    '{primary,main} / {secondary,replica,subordinate}'
> +    '{initiator,requester} / {target,responder}'
> +    '{controller,host} / {device,worker,proxy}'
> +    'leader / follower'
> +    'director / performer'
> +
> +Recommended replacements for 'blacklist/whitelist' are:
> +    'denylist / allowlist'
> +    'blocklist / passlist'
> +
> +Exceptions for introducing new usage is to maintain a userspace ABI/API,
> +or when updating code for an existing (as of 2020) hardware or protocol
> +specification that mandates those terms. For new specifications
> +translate specification usage of the terminology to the kernel coding
> +standard where possible.
>   
>   5) Typedefs
>   -----------
> 

Acked-by: Laura Abbott <laura@labbott.name>
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
