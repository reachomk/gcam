.class public final Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$MessagingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field static final KEY_DATA_MIME_TYPE:Ljava/lang/String; = "type"

.field static final KEY_DATA_URI:Ljava/lang/String; = "uri"

.field static final KEY_SENDER:Ljava/lang/String; = "sender"

.field static final KEY_TEXT:Ljava/lang/String; = "text"

.field static final KEY_TIMESTAMP:Ljava/lang/String; = "time"


# instance fields
.field private mDataMimeType:Ljava/lang/String;

.field private mDataUri:Landroid/net/Uri;

.field private final mSender:Ljava/lang/CharSequence;

.field private final mText:Ljava/lang/CharSequence;

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 2208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2209
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    .line 2210
    iput-wide p2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    .line 2211
    iput-object p4, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    .line 2212
    return-void
.end method

.method static getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 2303
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Landroid/os/Bundle;

    .line 2304
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 2305
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 2306
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    aput-object v0, v2, v1

    .line 2305
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2308
    :cond_0
    return-object v2
.end method

.method static getMessageFromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2326
    :try_start_0
    const-string v0, "text"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "time"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 2340
    :goto_0
    return-object v0

    .line 2329
    :cond_1
    new-instance v1, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    const-string v0, "text"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, "time"

    .line 2330
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v3, "sender"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v1, v0, v4, v5, v3}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    .line 2331
    const-string v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "uri"

    .line 2332
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2334
    const-string v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "uri"

    .line 2335
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2334
    invoke-virtual {v1, v3, v0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v1

    .line 2337
    goto :goto_0

    .line 2340
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0
.end method

.method static getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2312
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2313
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_1

    .line 2314
    aget-object v0, p0, v1

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2315
    aget-object v0, p0, v1

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getMessageFromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v0

    .line 2316
    if-eqz v0, :cond_0

    .line 2317
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2313
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2321
    :cond_1
    return-object v2
.end method

.method private final toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 2285
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2286
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 2287
    const-string v1, "text"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2289
    :cond_0
    const-string v1, "time"

    iget-wide v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2290
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 2291
    const-string v1, "sender"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2293
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2294
    const-string v1, "type"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 2297
    const-string v1, "uri"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2299
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final getDataMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2273
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2281
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getSender()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2266
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2252
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .prologue
    .line 2259
    iget-wide v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    return-wide v0
.end method

.method public final setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .locals 0

    .prologue
    .line 2242
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    .line 2243
    iput-object p2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    .line 2244
    return-object p0
.end method
