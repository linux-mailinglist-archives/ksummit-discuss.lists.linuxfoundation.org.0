Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3138F54E09E
	for <lists@lfdr.de>; Thu, 16 Jun 2022 14:14:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 564D241A65;
	Thu, 16 Jun 2022 12:14:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N02vfcNo8enw; Thu, 16 Jun 2022 12:14:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 726B141A59;
	Thu, 16 Jun 2022 12:14:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 265A4C002D;
	Thu, 16 Jun 2022 12:14:48 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 83614C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 12:14:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 64CA741A4B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 12:14:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r3krwMMtwxqj
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 12:14:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 73D85410DC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 12:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1655381684;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=8/61+EsKJotNEzZxYAG3VSutI95W65/m3BS81hk+zBI=;
 b=RzF7JzQj3w7zU75rcTjI34CbI4Xxma8v2sbuQYeNmNpKlQT0KzGbMSoZWfKURmBiRfg6aU
 s0sP7ReRa2TZQ45Cu9xjEIDftpPEbaLtcT1t85fL44Q3H7z7tUnJMwRsigMfr/NrcPebwS
 LkpSKLqrgnd0JnCzo9RlI4cqPwMUQH0=
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com
 [209.85.216.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-39-4cmUSIKVM6-p-BWkDRJ4rw-1; Thu, 16 Jun 2022 08:14:43 -0400
X-MC-Unique: 4cmUSIKVM6-p-BWkDRJ4rw-1
Received: by mail-pj1-f69.google.com with SMTP id
 y15-20020a17090a474f00b001eac1991515so821182pjg.1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 05:14:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8/61+EsKJotNEzZxYAG3VSutI95W65/m3BS81hk+zBI=;
 b=fLQ3CibAh7rCputIj8ljzOWExgxdAgkJSbVAi1elFj+pvz0TylDqLbhwpNvpi5r7ch
 FSZD/GhP4TUZ9ii+IoK2T9XVGP801n2IDtDcklav32RhCIJBUKfVM5Z1yZUn+GxFvEIo
 m9gRs5VhVRujAzb6KYctIXY2buC3SNzoPNAK7JSC3YK4rBw/iVn1wsbL0UBp8VYnON7A
 38ZbJ/PjlnKj3wJSb9LhGn9vU8iG32A86VC1ZOYe5RdwSn7ZrH8yW4AxliqTniY/kAUD
 RJAkcTEBTQNe00DT+1X78j/InUtA0GJLgFk+K898Kb1BzDzpM1KnpudAZMl3qTnvprb/
 J0iA==
X-Gm-Message-State: AJIora9xRLYF0aJp9GoRI0pyCcg1IrGOsZSnJQgBsvGs1zVUgs9UfoAi
 cXBeClU3HzZfMaRdigonXQzhAbtC2le/zyM8KjyIVpfPFvrH2I6NKoV5VaozUnWNPnfPh6yDDIt
 ufQkpwfSb3WUAg4YNcRmN4aGgJa/5itNxMEedELlONZaLKAca7Tah6qpkjA==
X-Received: by 2002:a63:3344:0:b0:408:cd45:3e6b with SMTP id
 z65-20020a633344000000b00408cd453e6bmr4272106pgz.146.1655381681846; 
 Thu, 16 Jun 2022 05:14:41 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1suxpBIuOeEtU8NcI4yB3dBf+fjZotw1zWnXjrgSFWlfiJuYkiLnUfkFR65aWJzOahX1VzgXgfCmWOCo+9leiE=
X-Received: by 2002:a63:3344:0:b0:408:cd45:3e6b with SMTP id
 z65-20020a633344000000b00408cd453e6bmr4272071pgz.146.1655381681537; Thu, 16
 Jun 2022 05:14:41 -0700 (PDT)
MIME-Version: 1.0
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan>
 <87h74lvnyf.fsf@meer.lwn.net> <20220615174358.GA26358@lst.de>
 <CAO-hwJKqA07KX+6QtotCS8PtHFtk3DLQPJ3W8puaHOv7tOdi+Q@mail.gmail.com>
 <20220616114856.GA11127@lst.de>
In-Reply-To: <20220616114856.GA11127@lst.de>
From: Benjamin Tissoires <benjamin.tissoires@redhat.com>
Date: Thu, 16 Jun 2022 14:14:30 +0200
Message-ID: <CAO-hwJKEOiAin_9Hq2tav2WQGV=17-EHoQ6qPYMZ5znLJUmYxA@mail.gmail.com>
To: Christoph Hellwig <hch@lst.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=btissoir@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Bartosz Golaszewski <brgl@bgdev.pl>, Luca Weiss <luca@z3ntu.xyz>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
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

On Thu, Jun 16, 2022 at 1:49 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Wed, Jun 15, 2022 at 08:34:19PM +0200, Benjamin Tissoires wrote:
> > Also, one of the things I'd like to have in kfuncs is to be able to
> > restrict them to a set of tracepoints, not just "all tracing
> > programs".
>
> Yes.
>
> > Because the thing I do not want is users hijacking the kfunc API I
> > define in other use cases I haven't thought of, and this would prevent
> > changes.
>
> Yes.  And I also think the BTF_IDs for kfuncs need to become something
> like EXPORT_SYMBOL_EPBF to be more explicit and greppable and need to
> see the same process.  That is in-tree users and no guarantee of stability
> for out of tree users.

Sounds interesting :)

>
> > And AFAICT, I consider everything eBPF I do in HID as ABI, and treat
> > it as such, and document it from day one.
>
> Yikes.  So you're adding a UDI-like stable driver ABI?
>

No, I mean I am carefully defining the eBPF api I am willing to export
to user space, and will restrain myself from shuffling arguments every
single release.

The last change in the HID core protocol was 20 years old, so we
roughly know what it does. It is not so much of a task to define what
will be unlikely to change.

Maybe a better way of putting it: "I consider *almost* everything eBPF
I do in HID as *UAPI*, and treat it as such, and document it from day
one."

Cheers,
Benjamin

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
