Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A358D414A0D
	for <lists@lfdr.de>; Wed, 22 Sep 2021 15:03:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F532407D7;
	Wed, 22 Sep 2021 13:03:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 920nAasa7JQu; Wed, 22 Sep 2021 13:03:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 68BCA407D8;
	Wed, 22 Sep 2021 13:03:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0BF13C0022;
	Wed, 22 Sep 2021 13:03:05 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0D400C000D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 22 Sep 2021 13:03:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ED9F3407D5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 22 Sep 2021 13:03:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gXHzDSN33FYz
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 22 Sep 2021 13:03:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com
 [IPv6:2607:f8b0:4864:20::736])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D6FFD407CB
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 22 Sep 2021 13:03:01 +0000 (UTC)
Received: by mail-qk1-x736.google.com with SMTP id p4so9455923qki.3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 22 Sep 2021 06:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=labbott.name; s=google;
 h=message-id:date:mime-version:user-agent:content-language:to:cc:from
 :subject:content-transfer-encoding;
 bh=Mzti7OcQhNV5Y7jNBpCwNPoM5QFEKkHFwpOXiZ924fc=;
 b=kXJ70SnnTkMcZ3kA/YBszIZENe7dzrkdheh0c8M5ORy+56Hu38qdXncuv0FI9RAejb
 XQ0TWhSZbJEv0LBsxPk4s9yUfk8FtZYLYb/CllmXeqpKaBYJNoDi5zwTrcWKrI82+P2j
 6MOI1FXElrpMc1sxkqKdScJkUoPSIY3uDhToA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent
 :content-language:to:cc:from:subject:content-transfer-encoding;
 bh=Mzti7OcQhNV5Y7jNBpCwNPoM5QFEKkHFwpOXiZ924fc=;
 b=plWibsvLiga7cOUlCuw5liBIwVBcOaS8erS7j/K2N5laq1TGBqQfUTOnVN4Dy8bmpd
 0kcGhaV2/gsqxvXK0ZulrT3oq7onLGSQl34KElxETjezxk4fsxIPYz8TL4+SF+S4c6WU
 LSbpT5aRzwdMUk/fDpljkb6Aoj7ZvzB2P0Eb+tl8UztiZLcPVeFtwjSqZnNolsw4k3wb
 9tnJXOVmnu1ZIGfTDBQkdQyUwz89F3KHvU4917Qy4duTzROAPDSE1gbc/zAIC/rCp+58
 Fy5Tn9G9deGgNiqzF0jyvsq1Flb7oxB8cIZwQYD37RMoNueAKoTt4TFW1LQ/BK4IiBox
 tpew==
X-Gm-Message-State: AOAM533uNngCqYhti+xHRNoKw5t+6SEyTvC0+BYhZqmQu3ji9pBXgVVG
 /9J9OzLyVjJycdzu8cjf52oJqw==
X-Google-Smtp-Source: ABdhPJyLiBDotfHrhGzTOmGecvtOi21xcOHtpAybjkI6xzcfTjZ2UDI0x8MRc8PbCu1YM4sMiybqcQ==
X-Received: by 2002:a05:620a:5b7:: with SMTP id
 q23mr17001937qkq.59.1632315780497; 
 Wed, 22 Sep 2021 06:03:00 -0700 (PDT)
Received: from [192.168.1.168] (pool-74-109-246-95.pitbpa.fios.verizon.net.
 [74.109.246.95])
 by smtp.gmail.com with ESMTPSA id a9sm1693583qko.27.2021.09.22.06.02.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Sep 2021 06:03:00 -0700 (PDT)
Message-ID: <d9b328d6-7e99-f0ba-2376-72829c28cff4@labbott.name>
Date: Wed, 22 Sep 2021 09:02:59 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
Content-Language: en-US
To: ksummit@lists.linux.dev,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>
From: Laura Abbott <laura@labbott.name>
Cc: "tab-elections@lists.linuxfoundation.org"
 <tab-elections@lists.linuxfoundation.org>
Subject: [Ksummit-discuss] Reminder: Technical Advisory Board elections end
 September 23rd 16:00 GMT-4 (US/Eastern)
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

Hi,

Thank you everyone who has voted so far in the 2021 Technical Advisory
Board elections. Voting will run through September 23rd 16:00 GMT-4
(US/Eastern).

If you cannot find your ballot in your e-mail, please e-mail
tab-elections@lists.linuxfoundation.org.

If you thought you should have gotten a ballot but did not see one
please fill out the CIVS opt-in form
https://civs1.civs.us/cgi-bin/opt_in.pl
and e-mail tab-elections@lists.linuxfoundation.org

If you did not yet request a ballot but are eligible under the following
criteria please contact tab-elections@lists.linuxfoundation.org

There exist three kernel commits in a mainline or stable released
kernel that both
- Have a commit date in the year 2020 or 2021
- Contain an e-mail address in one of the following tags or merged
tags (e.g. Reviewed-and-tested-by)
-- Signed-off-by
-- Tested-by
-- Reported-by
-- Reviewed-by
-- Acked-by

If you have any other feedback, please e-mail
tab-elections@lists.linuxfoundation.org

Thanks,
Laura
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
