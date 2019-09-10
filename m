Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id AC117AED97
	for <lists@lfdr.de>; Tue, 10 Sep 2019 16:47:49 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3D44BDD9;
	Tue, 10 Sep 2019 14:47:27 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 256FDDA2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 10 Sep 2019 14:47:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C198D8A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 10 Sep 2019 14:47:23 +0000 (UTC)
Received: by mail-io1-f49.google.com with SMTP id d25so38129631iob.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 10 Sep 2019 07:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=date:from:to:subject:message-id:mail-followup-to:mime-version
	:content-disposition:user-agent;
	bh=jFstMxP5ArhjV/XloGk8uAEQ+P4dzxlPol5tGxNgdAA=;
	b=YkLtlN1ijW9j9ZG2xNl6R/U4PO0lbkqjQ+//em/W4hYlntZ4O1VSi4ffnOli1Jk/a0
	/vAwia3X1fn+ptJLaJUKxA2edCUZVKBaOjpoQmRsUKbZ76U7UpgcxX4e9Vs3/UvuxqTY
	KHlAPGUAwj6WoVfhJHy9q62/TqnOFBipTkP8U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:mime-version:content-disposition:user-agent;
	bh=jFstMxP5ArhjV/XloGk8uAEQ+P4dzxlPol5tGxNgdAA=;
	b=uQk5cZU72J03dou+7dbzy6hgh6NgJZN+6MllHzTFYhcfUY7m8FIJlcIqzLXAKL4N8d
	41lTrjDg+yIormoAs62vMPgu1Zmt9Uu9NIgFU3XuyhmTjlSTikbnyeIZH1Zt0NQZ+cM+
	pae2Gl/rlew211Q4ga/yxLj+NJBwsAPIwO1+zk33AavFdL/C4UrtlSlysAHEndLZ+PoI
	fEHkmX7zoXK0vdN/4BO9g9g6s6YAzfyrdCQGMimmdTbpdnzfTQqPp80maW+jaOPY1Gev
	Gu1umiDZom024MSUtCpTSKXhbRl1Nl46oahmvIyd9CMOaycxbpC/aRBRRtOv2EOUOxjt
	DiCQ==
X-Gm-Message-State: APjAAAUgBF6Djdm5kcQig5dqAnw90oqPnZlVBVWm3/5WPj+ncDbpKhmn
	Zgm79qb+0U//JtUHk9kpIKE4yW6Q9EvWS2N9SyA=
X-Google-Smtp-Source: APXvYqz2j8/zWcV1Sypz3rIKRhg3lE/uAYtHjPx0KGixSn2KW/HRkLX2poCMUKgOCkTx9mDV8F0UTA==
X-Received: by 2002:a02:9983:: with SMTP id a3mr32273349jal.49.1568126842796; 
	Tue, 10 Sep 2019 07:47:22 -0700 (PDT)
Received: from pure.paranoia.local ([87.101.92.157])
	by smtp.gmail.com with ESMTPSA id
	m11sm13744886ioc.42.2019.09.10.07.47.21
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 10 Sep 2019 07:47:22 -0700 (PDT)
Date: Tue, 10 Sep 2019 10:47:17 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190910144717.GA20115@pure.paranoia.local>
Mail-Followup-To: ksummit-discuss@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: [Ksummit-discuss] ksummit-discuss is now on lore.kernel.org
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

Hello:

By (very) popular demand, ksummit-discuss archives can now be accessed
via https://lore.kernel.org/ksummit-discuss/.

Regards,
-K
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
