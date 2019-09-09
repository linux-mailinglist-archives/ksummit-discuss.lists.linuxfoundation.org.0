Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB3BAD927
	for <lists@lfdr.de>; Mon,  9 Sep 2019 14:37:57 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7B8AC1083;
	Mon,  9 Sep 2019 12:37:44 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E4A261077
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 12:37:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
	[209.85.222.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 617B37DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 12:37:41 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id h126so5130867qke.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 09 Sep 2019 05:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Qr+xCBph+cS38cFRFKWRNP1p9uTTLUtJt9aqr//oudM=;
	b=PIAPdEfakhJJslOkarb89/PdLupWdX6txaRWK2mRb258tIFV7APGbUXXBm+2L1z/g9
	nu/QuckT7VubUlnVfwuqv92WaCSfd6hCf9ALAeVwkrVZIucoBAA/4XTw8tzJGn9KJC5f
	rbmKRL98rgUNITRfCEAX/FIiY052Z+vZg9gv4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:in-reply-to:user-agent;
	bh=Qr+xCBph+cS38cFRFKWRNP1p9uTTLUtJt9aqr//oudM=;
	b=lsi5T7LLX044Pi0tdOO1xLYMfwt9VxWDJN5OH5ryxSudHwRBRJz3QaGTXLhBmwG2oN
	zpGFCN7Y0Yaspt6uEa8OyhTJIpHc0fi0rP0T5G2+gFfvx4oBMrU+P/pV1mbObHxaodeO
	f8+DE6JfyhLOlY4nESzDPaGU468EY6Z/uLsxEsxhuxDFNhf3krJua8RMbeM4oUYD91FL
	l59FKNJF1vl9lRUGFsHUabRwczLmDvvEW7C4HHFVe/Qrs+yZLN5lfp8Na7vJ5+nn1+nV
	nGCOriQzGzlkJeQKwJ6KxS1fhHHogHRqKxLuZXx1McjHn5hWYMQvDXYDWTsxYNPHz2UA
	BMqg==
X-Gm-Message-State: APjAAAVUSCVpwY9vjy9QfV7YpBG0a63WcwJTgT1qhCwM+GVAcl478SZ4
	QC3dkFJ/MpPnp+cQXE4vsY7ILgGj
X-Google-Smtp-Source: APXvYqx6xeJ/k82ucEy+ymBzZfkdD5jDokHh+8bAsWaBbSroPOkqVBhC/r79rYrkGW2Z8BpoinGcSg==
X-Received: by 2002:ae9:edd8:: with SMTP id
	c207mr16713919qkg.337.1568032660384; 
	Mon, 09 Sep 2019 05:37:40 -0700 (PDT)
Received: from pure.paranoia.local ([87.101.92.157])
	by smtp.gmail.com with ESMTPSA id
	b16sm8430250qtk.65.2019.09.09.05.37.38
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 09 Sep 2019 05:37:39 -0700 (PDT)
Date: Mon, 9 Sep 2019 08:37:35 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20190909123735.GA10854@pure.paranoia.local>
Mail-Followup-To: Geert Uytterhoeven <geert@linux-m68k.org>,
	Jani Nikula <jani.nikula@intel.com>,
	Olof Johansson <olof@lixom.net>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Bjorn Helgaas <helgaas@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
References: <20190904120843.GD4811@pendragon.ideasonboard.com>
	<20190904134706.GA14421@pure.paranoia.local>
	<87lfv3w3v6.fsf@intel.com>
	<CAL_Jsq+-bGRxaOxEbCH+57TQto6KUO7Fs+tMLswzeJEB=FWA+Q@mail.gmail.com>
	<CAHk-=whovSzsjL0HrfVbYTP8RCcCQj6u3g1LsfOiNeQmzfy2mA@mail.gmail.com>
	<CAOesGMjpsQYL2gK3M1fvxmCHp=ZZj9Hx4JcFASMvKQXMfyfXBA@mail.gmail.com>
	<87imq1x3q2.fsf@intel.com>
	<CAMuHMdXVJuRv1n1zvmVUYOj_DCkYu-n3mub9rSdePf6M1nEObw@mail.gmail.com>
	<20190909101606.GB9452@pure.paranoia.local>
	<CAMuHMdXxcJhNqPZBpf4QHpECN=aDXe7uYv3F2S4re04YaRUypA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXxcJhNqPZBpf4QHpECN=aDXe7uYv3F2S4re04YaRUypA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
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

On Mon, Sep 09, 2019 at 12:59:26PM +0200, Geert Uytterhoeven wrote:
> So the weakest link seems to be the step between public review and
> import into git by the maintainer.  E.g.
>   - The review chain on multiple submissions: Vn+1 may contain an evil
>      change that was not in Vn.  As this happens in public, it may be
>      noticed by reviewers.

Theoretically, a tool that is able to show interdiffs between
patches/series would be able to help identify those.

>   - The path between patch submission and git-am:  if a patchwork
>     instance is compromised, evil changes may sneak in.

I'm not sure we can fix this problem in any way that would be
meaningful. I did have some thoughts about this -- for example, we could
run an API service on lore.kernel.org that would allow issuing queries
like:
- do you have a record of a patch
  - with patch-id c052719edde5b0c648b2e4629a7fbd72fd948652
  - sent by shengjiu.wang@nxp.com
  - sent to list with id linux-kernel.vger.kernel.org
  - sent on 2019-09-09

If the query returns "True" then you know that at least lore.kernel.org
has received the same patch, but I'm not sure if we'd be solving
anything in the grander scheme of things. We still have to trust
kernel.org, plus an attacker could have sent a malicious patch to LKML
with a forged "From" to make this check return true. Nobody really reads
LKML, so sneaking something unnoticed would be fairly easy.

Alternatively, a developer could require that all submitted patches
must include a cryptographic signature. It could even be made relatively
painless, especially if we taught git tools to do it.

For git-format-patch we'd need something like this:

- generate a patch-id (using `git patch-id --stable`)
- generate a signify-compatible signature for the patch-id
- add 'Patch-id-sig' and 'Patch-id-key' into the basement (under "---")

E.g., for the same patch as the example I used above:

------
Subject: [PATCH 1/3] ASoC: fsl_asrc: Use in(out)put_format instead of in(out)put_word_width

snd_pcm_format_t is more formal than enum asrc_word_width, which has
two property, width and physical width, which is more accurate than
enum asrc_word_width. So it is better to use in(out)put_format
instead of in(out)put_word_width.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 sound/soc/fsl/fsl_asrc.c | 56 +++++++++++++++++++++++++++-------------
 sound/soc/fsl/fsl_asrc.h |  4 +--
 2 files changed, 40 insertions(+), 20 deletions(-)

 Patch-id-sig: RWT9fcUvSnHPLrCB+miMdp13r39W9az07CWW+b4OLz5zdtPUaj0N9qnfdNB+cbs8T1jYzHPIWfaf+B6z/ZvSVG9rfE1/Xx6+EgU=
 Patch-id-key: RWT9fcUvSnHPLqqyfLbkGBMEscBWciFFp2iBj2XnZPzW69OVIoYwZ25q

diff --git a/sound/soc/fsl/fsl_asrc.c b/sound/soc/fsl/fsl_asrc.c
...etc...
------

Then we teach git-am to keep a trust-on-first-use (TOFU) database of
public keys, so that:

- if there are no entries matching the email in From:, the key is
  added and automatically considered trusted
- if there are entries matching From:, the public key is compared
  with the TOFU database
  - if match, the key is used to validate that the patch-id hasn't
    changed
  - if no match, generate a warning and let the developer decide if they
    trust the new key or not
- if there are entries matching From: in the local TOFU db but the patch
  does not have a "Patch-id-sig", generate a warning

This would be more workable than using PGP signatures, but this would
still be a significant pain point for everyone, so I'm not sure how many
would consider using this. What seems reasonable from the security
high-horse I'm sitting on is not always reasonable for others.
:)

-K
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
