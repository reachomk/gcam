.class public Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;
.super Ljava/lang/Object;
.source "ConfigurationHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/ConfigurationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConfigurationHelperImpl"
.end annotation


# static fields
.field private static exception:Ljava/lang/Exception;

.field private static isEmulator:Ljava/lang/Boolean;

.field private static mAvailableLayouts:[Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

.field private static sInstance:Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;

.field private static volatile sMainThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4053
    return-void
.end method

.method public static acquire$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BRKD5HMMPBKE1NMUR1FAHKM6QR5EH86URRC7D4IIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T1MORRJCLGM4R359HKN6T1R(Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;I)Lcom/google/android/apps/camera/async/CloseableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;",
            "I)",
            "Lcom/google/android/apps/camera/async/CloseableList",
            "<",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketPool$NoCapacityAvailableException;
        }
    .end annotation

    .prologue
    .line 34034
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0, v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->acquireFutureTickets(I)Lcom/google/android/apps/camera/async/CloseableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/camera/async/CloseableFutures;->getOrClose(Lcom/google/android/apps/camera/async/CloseableFuture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/CloseableList;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 34035
    :catch_0
    move-exception v0

    .line 34036
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketPool$NoCapacityAvailableException;

    if-eqz v1, :cond_0

    .line 34037
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketPool$NoCapacityAvailableException;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketPool$NoCapacityAvailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 34039
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static addAndCloseFrame(Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;Lcom/android/camera/one/v2/imagemanagement/frame/Frame;)V
    .locals 2

    .prologue
    .line 36019
    invoke-interface {p1}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->removeNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v0

    .line 36020
    :goto_0
    if-eqz v0, :cond_0

    .line 36021
    invoke-interface {p1}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;->addFullSizeImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 36022
    invoke-interface {p1}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->removeNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v0

    goto :goto_0

    .line 36024
    :cond_0
    invoke-interface {p1}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->close()V

    .line 36025
    return-void
.end method

.method public static addAsChild(Lcom/google/android/apps/camera/async/Lifetime;Lcom/google/android/apps/camera/async/Lifetime;)V
    .locals 1

    .prologue
    .line 50187
    invoke-virtual {p0}, Lcom/google/android/apps/camera/async/Lifetime;->createChildLifetime()Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    .line 50188
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 50189
    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 50190
    return-void
.end method

.method public static anyTimestampIn(Lcom/google/android/libraries/smartburst/media/Summary;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/libraries/smartburst/media/Image;",
            ">(",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<TT;>;)J"
        }
    .end annotation

    .prologue
    .line 50891
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/media/Summary;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 50892
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/media/Summary;->getTimestamps()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 50891
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static appendQuotedBytes([BLjava/lang/StringBuffer;)V
    .locals 7

    .prologue
    const/16 v6, 0x5c

    const/4 v1, 0x0

    const/16 v5, 0x22

    .line 51183
    if-nez p0, :cond_0

    .line 51184
    const-string v0, "\"\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51200
    :goto_0
    return-void

    .line 51188
    :cond_0
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    .line 51189
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 51190
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 51191
    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_2

    .line 51192
    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 51189
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51193
    :cond_2
    const/16 v3, 0x20

    if-lt v2, v3, :cond_3

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_3

    .line 51194
    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 51196
    :cond_3
    const-string v3, "\\%03o"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 51199
    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static bitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 50041
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 50042
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 50043
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50056
    :goto_0
    return-object v0

    .line 50046
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 50047
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 50049
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50051
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 50053
    invoke-virtual {p0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 50054
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public static bufferedFileOutputStream(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 50971
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public static calculateBestSubsampleFactor(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 45051
    .line 45053
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    .line 45054
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    .line 45052
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 45055
    if-gtz v1, :cond_2

    .line 45068
    :cond_0
    :goto_0
    return v0

    .line 45061
    :cond_1
    add-int/lit8 v1, v1, -0x1

    :cond_2
    if-lez v1, :cond_0

    .line 45062
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isValidSamplingFactor(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45063
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isValidSamplingFactor(II)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 45064
    goto :goto_0
.end method

.method public static calculateSquareSubsampleFactor(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)I
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 45020
    .line 45022
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    div-int/2addr v0, v2

    .line 45023
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    .line 45021
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 45024
    if-gtz v0, :cond_1

    .line 45025
    const/4 v0, 0x1

    .line 45037
    :cond_0
    :goto_0
    return v0

    .line 45028
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 45031
    :goto_1
    if-lt v0, v1, :cond_2

    .line 45032
    invoke-static {v2, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isValidSamplingFactor(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 45031
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 45037
    goto :goto_0
.end method

.method public static checkArgument(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 50164
    if-nez p0, :cond_0

    .line 50165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50167
    :cond_0
    return-void
.end method

.method public static checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50173
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50176
    :cond_0
    return-object p0
.end method

.method public static checkNotEmpty(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection",
            "<TY;>;Y:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 50177
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50180
    :cond_0
    return-object p0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 50168
    const-string v0, "Argument must not be null"

    invoke-static {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)TT;"
        }
    .end annotation

    .prologue
    .line 51001
    if-nez p0, :cond_0

    .line 51002
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "@AutoFactory method argument is null but is not marked @Nullable. Argument index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51006
    :cond_0
    return-object p0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 50169
    if-nez p0, :cond_0

    .line 50170
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50172
    :cond_0
    return-object p0
.end method

.method public static clearDirectory(Ljava/io/File;)Z
    .locals 5

    .prologue
    .line 50961
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50962
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 50963
    const/4 v0, 0x1

    .line 50964
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 50965
    if-eqz v3, :cond_0

    .line 50966
    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v3, v1

    .line 50967
    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->recursiveDelete(Ljava/io/File;)Z

    move-result v2

    and-int/2addr v2, v0

    .line 50966
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 50970
    :cond_0
    return v0
.end method

.method public static convert$51666RRD5TGM8RR2CKNNGRBG5TKMQS3C5T17IT3589QMCPJ5E8TIIJ33DTMIUOB4DTH6ABRODLO2UQBDE1M2UGJPEHIK4TB6CPIN4EO_(Lcom/adobe/xmp/impl/ParameterAsserts;)Lcom/adobe/xmp/impl/ParameterAsserts;
    .locals 12

    .prologue
    const/16 v11, 0x80

    const/16 v5, 0xb

    const/16 v10, 0x8

    const/4 v1, 0x0

    .line 6068
    const-string v0, "UTF-8"

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6071
    new-array v9, v10, [B

    .line 6077
    new-instance v7, Lcom/adobe/xmp/impl/ParameterAsserts;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->length()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    invoke-direct {v7, v0}, Lcom/adobe/xmp/impl/ParameterAsserts;-><init>(I)V

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    .line 6080
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->length()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 6082
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/ParameterAsserts;->charAt(I)I

    move-result v8

    .line 6084
    packed-switch v2, :pswitch_data_0

    .line 6088
    const/16 v6, 0x7f

    if-ge v8, v6, :cond_0

    .line 6090
    int-to-byte v6, v8

    invoke-virtual {v7, v6}, Lcom/adobe/xmp/impl/ParameterAsserts;->append(B)V

    .line 6080
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6092
    :cond_0
    const/16 v6, 0xc0

    if-lt v8, v6, :cond_2

    .line 6095
    const/4 v3, -0x1

    move v2, v8

    .line 6097
    :goto_2
    if-ge v3, v10, :cond_1

    and-int/lit16 v6, v2, 0x80

    if-ne v6, v11, :cond_1

    .line 6099
    add-int/lit8 v3, v3, 0x1

    .line 6097
    shl-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6101
    :cond_1
    add-int/lit8 v2, v4, 0x1

    int-to-byte v6, v8

    aput-byte v6, v9, v4

    move v4, v2

    move v2, v5

    .line 6103
    goto :goto_1

    .line 6107
    :cond_2
    int-to-byte v6, v8

    invoke-static {v6}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->convertToUTF8(B)[B

    move-result-object v6

    .line 6108
    invoke-virtual {v7, v6}, Lcom/adobe/xmp/impl/ParameterAsserts;->append([B)V

    goto :goto_1

    .line 6113
    :pswitch_0
    if-lez v3, :cond_3

    and-int/lit16 v6, v8, 0xc0

    if-ne v6, v11, :cond_3

    .line 6116
    add-int/lit8 v6, v4, 0x1

    int-to-byte v8, v8

    aput-byte v8, v9, v4

    .line 6117
    add-int/lit8 v3, v3, -0x1

    .line 6119
    if-nez v3, :cond_7

    .line 6121
    invoke-virtual {v7, v9, v1, v6}, Lcom/adobe/xmp/impl/ParameterAsserts;->append([BII)V

    move v2, v1

    move v4, v1

    .line 6124
    goto :goto_1

    .line 6131
    :cond_3
    aget-byte v2, v9, v1

    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->convertToUTF8(B)[B

    move-result-object v2

    .line 6132
    invoke-virtual {v7, v2}, Lcom/adobe/xmp/impl/ParameterAsserts;->append([B)V

    .line 6135
    sub-int/2addr v0, v4

    move v2, v1

    move v4, v1

    .line 6138
    goto :goto_1

    .line 6145
    :cond_4
    if-ne v2, v5, :cond_5

    .line 6147
    :goto_3
    if-ge v1, v4, :cond_5

    .line 6149
    aget-byte v0, v9, v1

    .line 6150
    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->convertToUTF8(B)[B

    move-result-object v0

    .line 6151
    invoke-virtual {v7, v0}, Lcom/adobe/xmp/impl/ParameterAsserts;->append([B)V

    .line 6147
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move-object p0, v7

    .line 6160
    :cond_6
    return-object p0

    :cond_7
    move v4, v6

    goto :goto_1

    .line 6084
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public static convertFromBoolean(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4297
    if-eqz p0, :cond_0

    const-string v0, "True"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "False"

    goto :goto_0
.end method

.method public static convertFromDate(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5470
    invoke-static {p0}, Lcom/adobe/xmp/impl/ISO8601Converter;->render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertFromDouble(D)Ljava/lang/String;
    .locals 2

    .prologue
    .line 4434
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertFromInteger(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4344
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertFromLong(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 4391
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToBoolean(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4264
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 4266
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty convert-string"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 4268
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 4273
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    .line 4281
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    .line 4273
    goto :goto_0

    .line 4277
    :catch_0
    move-exception v3

    const-string v3, "true"

    .line 4278
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "t"

    .line 4279
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "on"

    .line 4280
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "yes"

    .line 4281
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 4277
    goto :goto_0
.end method

.method public static convertToDate(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 4450
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4452
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty convert-string"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 5077
    :cond_1
    new-instance v0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>()V

    invoke-static {p0, v0}, Lcom/adobe/xmp/impl/ISO8601Converter;->parse(Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v0

    .line 4456
    return-object v0
.end method

.method public static convertToDouble(Ljava/lang/String;)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    .line 4409
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4411
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty convert-string"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4420
    :catch_0
    move-exception v0

    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid double string"

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 4415
    :cond_1
    :try_start_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    return-wide v0
.end method

.method public static convertToInteger(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    .line 4315
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4317
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty convert-string"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4330
    :catch_0
    move-exception v0

    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid integer string"

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 4319
    :cond_1
    :try_start_1
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4321
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 4325
    :goto_0
    return v0

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method

.method public static convertToLong(Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    .line 4362
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4364
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty convert-string"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4377
    :catch_0
    move-exception v0

    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid long string"

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 4366
    :cond_1
    :try_start_1
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4368
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 4372
    :goto_0
    return-wide v0

    :cond_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    goto :goto_0
.end method

.method private static convertToUTF8(B)[B
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6177
    and-int/lit16 v0, p0, 0xff

    .line 6180
    const/16 v1, 0x80

    if-lt v0, v1, :cond_2

    .line 6182
    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x90

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9d

    if-ne v0, v1, :cond_1

    .line 6184
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    .line 6195
    :goto_0
    return-object v0

    .line 6188
    :cond_1
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p0, v1, v2

    const-string v2, "cp1252"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6195
    :cond_2
    new-array v0, v4, [B

    aput-byte p0, v0, v3

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;)Lcom/android/camera/remote/RemoteShutterListener;
    .locals 1

    .prologue
    .line 50075
    invoke-static {p0}, Lcom/android/camera/remote/WearRemoteShutterListener;->create(Landroid/content/Context;)Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    return-object v0
.end method

.method public static createImageFrame(II)Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;
    .locals 3

    .prologue
    .line 50834
    const/16 v0, 0x12d

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 50836
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    .line 50837
    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v0

    return-object v0
.end method

.method public static createPreallocatedStream(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;I)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 28023
    invoke-interface {p0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;->createStream()Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    move-result-object v1

    .line 28025
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->increaseCapacity(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 28033
    return-object v1

    .line 28026
    :catch_0
    move-exception v0

    .line 28027
    invoke-interface {v1}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->close()V

    .line 28028
    throw v0

    .line 28029
    :catch_1
    move-exception v0

    .line 28030
    invoke-interface {v1}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->close()V

    .line 28031
    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 50076
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 50077
    .line 50078
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 50083
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 50085
    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 50092
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 50097
    :goto_0
    if-nez v0, :cond_1

    move-object v0, v1

    .line 50108
    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    .line 50092
    :try_start_2
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    .line 50095
    goto :goto_0

    .line 50096
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    .line 50092
    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v1

    .line 50095
    goto :goto_0

    .line 50096
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 50091
    :catchall_0
    move-exception v0

    .line 50092
    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    .line 50095
    :goto_2
    throw v0

    .line 50100
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 50101
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 50102
    if-le v1, p2, :cond_0

    .line 50103
    int-to-float v3, p2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 50104
    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 50105
    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 50106
    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 50096
    :catch_4
    move-exception v2

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method private static deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 51155
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 51156
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 51157
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 51158
    if-nez v0, :cond_0

    .line 51159
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 51156
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51160
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51161
    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 51163
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 51166
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIIZ)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 21020
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 21021
    const/4 v2, 0x4

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 21022
    array-length v2, p0

    invoke-static {p0, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 21023
    if-nez p2, :cond_0

    .line 21036
    :goto_0
    return-object v0

    .line 21027
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 21029
    if-eqz p2, :cond_1

    .line 21030
    int-to-float v2, p2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 21037
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    .line 21036
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 5499
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Base64;->decode([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 5501
    :catch_0
    move-exception v0

    .line 5503
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Invalid base64 string"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method

.method public static deepCopy(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 50825
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 50826
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 50827
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 50828
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 50829
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 50830
    return-object v0
.end method

.method public static dumpMetadata(Ljava/lang/String;Lcom/android/camera/hdrplus/HdrPlusFrameMarker;Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;)V
    .locals 3

    .prologue
    .line 18050
    iget v0, p1, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;->frameIndex:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  Result frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18051
    const/4 v1, 0x0

    iget v2, p1, Lcom/android/camera/hdrplus/HdrPlusFrameMarker;->frameType:I

    invoke-static {p0, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getFilePathName(Ljava/lang/String;ZI)Ljava/io/File;

    move-result-object v1

    .line 18052
    invoke-static {v0, p2, v1}, Lcom/android/camera/util/CaptureDataSerializer;->toFile(Ljava/lang/String;Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;Ljava/io/File;)V

    .line 18053
    return-void
.end method

.method public static dumpStackTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17036
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->dumpStackTrace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dumpStackTrace(I)Ljava/lang/String;
    .locals 8

    .prologue
    .line 17047
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 17049
    array-length v3, v2

    .line 17050
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 17051
    const/4 v0, 0x3

    :goto_0
    if-ge v0, v3, :cond_0

    .line 17052
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17051
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17054
    :cond_0
    return-object v1
.end method

.method public static encodeBase64([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 5483
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/adobe/xmp/impl/Base64;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static ensureBackgroundThread()V
    .locals 2

    .prologue
    .line 50997
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50998
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be called on a background thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51000
    :cond_0
    return-void
.end method

.method private static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 51172
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 51173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    .line 51174
    :goto_0
    if-ge v0, v2, :cond_1

    .line 51175
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 51176
    const/16 v5, 0x20

    if-lt v4, v5, :cond_0

    const/16 v5, 0x7e

    if-gt v4, v5, :cond_0

    const/16 v5, 0x22

    if-eq v4, v5, :cond_0

    const/16 v5, 0x27

    if-eq v4, v5, :cond_0

    .line 51177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51174
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51179
    :cond_0
    const-string v5, "\\u%04x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 51182
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fillSummary(Ljava/util/Set;Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;)Lcom/google/android/libraries/smartburst/media/Summary;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/libraries/smartburst/media/Image;",
            ">(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle",
            "<TT;>;)",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50876
    new-instance v1, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;-><init>()V

    .line 50877
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 50878
    invoke-interface {p1}, Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;->newHandle()Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v5, v0, v3}, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;->add(JLcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;Z)V

    goto :goto_0

    .line 50880
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;->build()Lcom/google/android/libraries/smartburst/media/Summary;

    move-result-object v0

    return-object v0
.end method

.method public static fillWithNearest(Ljava/util/Set;Lcom/google/android/libraries/smartburst/media/Summary;)Lcom/google/android/libraries/smartburst/media/Summary;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/libraries/smartburst/media/Image;",
            ">(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<TT;>;)",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50881
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/media/Summary;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 50882
    new-instance v1, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;-><init>()V

    .line 50883
    new-instance v8, Ljava/util/TreeSet;

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/media/Summary;->getTimestamps()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 50884
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 50885
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/media/Summary;->markedAsExtra()Ljava/util/Set;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 50886
    invoke-static {v8, v2, v3}, Lcom/google/android/libraries/smartburst/utils/MathUtils;->closestValue(Ljava/util/NavigableSet;J)J

    move-result-wide v4

    .line 50887
    invoke-virtual {p1, v4, v5}, Lcom/google/android/libraries/smartburst/media/Summary;->newImageHandleAt(J)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v4

    .line 50888
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/media/Summary;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/media/Summary;->getHeight()I

    move-result v6

    .line 50887
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;->add(JLcom/google/android/libraries/smartburst/concurrency/Result;IIZ)V

    goto :goto_1

    .line 50881
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 50890
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;->build()Lcom/google/android/libraries/smartburst/media/Summary;

    move-result-object v0

    return-object v0
.end method

.method public static filterBlackListedSizes(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48029
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 48030
    array-length v1, v0

    if-nez v1, :cond_0

    .line 48041
    :goto_0
    return-object p0

    .line 48034
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 48035
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48036
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    .line 48037
    invoke-static {v0, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isBlackListed(Lcom/android/camera/util/Size;Ljava/util/Set;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 48038
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object p0, v1

    .line 48041
    goto :goto_0
.end method

.method public static frameFromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;
    .locals 2

    .prologue
    .line 50831
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->createImageFrame(II)Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v0

    .line 50832
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 50833
    return-object v0
.end method

.method public static from(Landroid/media/CamcorderProfile;)Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;
    .locals 12

    .prologue
    .line 50271
    new-instance v0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;

    iget v1, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    iget v2, p0, Landroid/media/CamcorderProfile;->audioChannels:I

    iget v3, p0, Landroid/media/CamcorderProfile;->audioCodec:I

    iget v4, p0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iget v5, p0, Landroid/media/CamcorderProfile;->fileFormat:I

    iget v6, p0, Landroid/media/CamcorderProfile;->quality:I

    iget v7, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    iget v8, p0, Landroid/media/CamcorderProfile;->videoCodec:I

    iget v9, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v10, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iget v11, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-direct/range {v0 .. v11}, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;-><init>(IIIIIIIIIII)V

    return-object v0
.end method

.method public static fromImageFormat(I)I
    .locals 2

    .prologue
    const/16 v1, 0x100

    const/16 v0, 0x11

    .line 50309
    if-ne p0, v0, :cond_0

    .line 50315
    :goto_0
    return v0

    .line 50312
    :cond_0
    if-ne p0, v1, :cond_1

    move v0, v1

    .line 50313
    goto :goto_0

    .line 50315
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static fromSessionDirectory(Ljava/io/File;)Lcom/google/android/libraries/smartburst/storage/MetadataStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50567
    new-instance v0, Ljava/io/File;

    const-string v1, "metadatastore.bin"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50568
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    .line 50571
    :try_start_0
    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->fromStream(Ljava/io/DataInputStream;)Lcom/google/android/libraries/smartburst/storage/MetadataStore;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 50572
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 50571
    return-object v0

    .line 50568
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50572
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    throw v0

    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    goto :goto_0
.end method

.method public static fromStream(Ljava/io/DataInputStream;)Lcom/google/android/libraries/smartburst/storage/MetadataStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50553
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 50554
    if-gtz v0, :cond_0

    .line 50555
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x47

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unsupported serialization version ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", minimum is 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50559
    :cond_0
    new-instance v1, Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/storage/MetadataStore;-><init>()V

    .line 50561
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 50562
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 50563
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readMetadata(Ljava/io/DataInputStream;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/smartburst/storage/MetadataStore;->storeMetaData(Lcom/google/android/libraries/smartburst/storage/Metadata;)V

    .line 50562
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50566
    :cond_1
    return-object v1
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 50802
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 50803
    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 50804
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50808
    :goto_0
    return-object v0

    .line 50805
    :catch_0
    move-exception v0

    .line 50807
    const-string v1, "SystemProperties"

    const-string v2, "Exception while getting system property: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, p1

    .line 50808
    goto :goto_0
.end method

.method public static getAbsoluteLeft(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 50115
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 50116
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 50118
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getAbsoluteLeft(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getAbsoluteTop(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 50119
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 50120
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 50122
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getAbsoluteTop(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getBuildSource()Lcom/android/camera/util/app/AppProperties$BuildSource;
    .locals 1

    .prologue
    .line 50074
    sget-object v0, Lcom/android/camera/util/app/AppProperties$BuildSource;->RELEASE:Lcom/android/camera/util/app/AppProperties$BuildSource;

    return-object v0
.end method

.method public static getBurstUuidFromJpegFile(Ljava/io/File;)Ljava/util/UUID;
    .locals 5

    .prologue
    .line 10024
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/XmpUtil;->extractXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 10025
    if-nez v0, :cond_0

    .line 10026
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not fetch UUID from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10030
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    const-string v2, "http://ns.google.com/photos/1.0/creations/"

    const-string v3, "GCreations"

    .line 10031
    invoke-interface {v1, v2, v3}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10033
    const-string v1, "http://ns.google.com/photos/1.0/creations/"

    const-string v2, "CameraBurstID"

    .line 10034
    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10033
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 10036
    :catch_0
    move-exception v0

    .line 10037
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Could not fetch UUID from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getByteBufferFromBitmap(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 50809
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 50810
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 50811
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 50812
    return-object v0
.end method

.method public static getByteBufferFromResource(Landroid/content/Context;I)Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 50813
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 50814
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 50816
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 50818
    :try_start_0
    invoke-static {v1}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 50822
    :goto_0
    array-length v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 50823
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 50824
    return-object v1

    .line 50819
    :catch_0
    move-exception v1

    .line 50820
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/view/WindowManager;)I
    .locals 1

    .prologue
    .line 50143
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getUiOrientation(Landroid/view/WindowManager;)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->getCcwDegrees()I

    move-result v0

    return v0
.end method

.method public static getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 4059
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 4060
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/res/ConfigurationHelperGingerbread;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4062
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDrawableDimensions(Landroid/content/Context;I)Lcom/android/ex/camera2/portability/Size;
    .locals 3

    .prologue
    .line 50298
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 50299
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 50300
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 50301
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 50302
    new-instance v1, Lcom/android/ex/camera2/portability/Size;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, v2, v0}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    return-object v1
.end method

.method private static getFilePathName(Ljava/lang/String;ZI)Ljava/io/File;
    .locals 2

    .prologue
    .line 18083
    packed-switch p2, :pswitch_data_0

    .line 18101
    const-string v0, "payload_burst_actual_hal3.txt"

    .line 18105
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 18085
    :pswitch_0
    const-string v0, "metering_burst_actual_hal3.txt"

    goto :goto_0

    .line 18088
    :pswitch_1
    const-string v0, "payload_burst_actual_hal3.txt"

    goto :goto_0

    .line 18091
    :pswitch_2
    const-string v0, "payload_burst_actual_hal3.txt"

    goto :goto_0

    .line 18094
    :pswitch_3
    const-string v0, "viewfinder_actual_hal3.txt"

    goto :goto_0

    .line 18098
    :pswitch_4
    const-string v0, "payload_burst_actual_hal3.txt"

    goto :goto_0

    .line 18083
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static varargs getLargestImageAndClose(Lcom/android/camera/one/v2/imagemanagement/frame/Frame;[I)Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 29024
    invoke-interface {p0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->removeNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v3

    .line 29025
    const/4 v2, 0x0

    .line 29026
    const/4 v0, -0x1

    .line 29027
    :goto_0
    if-eqz v3, :cond_4

    .line 29028
    invoke-interface {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v5

    .line 29138
    array-length v6, p1

    move v1, v4

    :goto_1
    if-ge v1, v6, :cond_1

    aget v7, p1, v1

    .line 29139
    if-ne v7, v5, :cond_0

    .line 29140
    const/4 v1, 0x1

    .line 29028
    :goto_2
    if-nez v1, :cond_2

    .line 29029
    invoke-interface {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    move-object v1, v2

    .line 29040
    :goto_3
    invoke-interface {p0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->removeNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v3

    move-object v2, v1

    goto :goto_0

    .line 29138
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v4

    .line 29143
    goto :goto_2

    .line 29031
    :cond_2
    invoke-interface {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v1

    invoke-interface {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v5

    mul-int/2addr v1, v5

    .line 29032
    if-le v1, v0, :cond_5

    .line 29033
    if-eqz v2, :cond_3

    .line 29034
    invoke-interface {v2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    :cond_3
    move v0, v1

    move-object v1, v3

    .line 29037
    goto :goto_3

    .line 29042
    :cond_4
    invoke-interface {p0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->close()V

    .line 29043
    return-object v2

    :cond_5
    move-object v1, v2

    goto :goto_3
.end method

.method public static getLayouts()[Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;
    .locals 15

    .prologue
    const/16 v14, 0x3c

    const/4 v13, 0x1

    const/16 v12, 0x3b

    const/16 v11, 0x76

    const/4 v10, 0x0

    .line 50414
    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->mAvailableLayouts:[Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    if-eqz v0, :cond_0

    .line 50415
    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->mAvailableLayouts:[Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    .line 50544
    :goto_0
    return-object v0

    .line 50417
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 50419
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 50420
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x180

    const/16 v2, 0x100

    invoke-direct {v0, v10, v10, v1, v2}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50421
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x105

    const/16 v2, 0x180

    const/16 v3, 0x100

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50422
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const/16 v1, 0x190

    const/16 v2, 0x215

    const/16 v3, 0x8

    sget-object v4, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;->LANDSCAPE:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    .line 50423
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v13

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;-><init>(IIILcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;Ljava/util/List;Ljava/util/List;)V

    .line 50422
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50425
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 50426
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x100

    const/16 v2, 0x180

    invoke-direct {v0, v10, v10, v1, v2}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50427
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x105

    const/16 v2, 0x100

    const/16 v3, 0x180

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50428
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const/16 v1, 0x215

    const/16 v2, 0x190

    const/16 v3, 0x8

    sget-object v4, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;->PORTRAIT:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    .line 50429
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v13

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;-><init>(IIILcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;Ljava/util/List;Ljava/util/List;)V

    .line 50428
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50431
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 50432
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0xf0

    invoke-direct {v0, v10, v10, v1, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50433
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x7a

    invoke-direct {v0, v10, v1, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50434
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x7a

    const/16 v2, 0x7a

    invoke-direct {v0, v1, v2, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50435
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const/16 v1, 0xfa

    const/16 v2, 0xfa

    const/4 v3, 0x5

    sget-object v4, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;->LANDSCAPE:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;

    new-array v5, v13, [Ljava/lang/Integer;

    .line 50436
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;-><init>(IIILcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;Ljava/util/List;Ljava/util/List;)V

    .line 50435
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50438
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 50439
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    invoke-direct {v0, v10, v10, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50440
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x7a

    const/16 v2, 0xf0

    invoke-direct {v0, v10, v1, v2, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50441
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x7a

    invoke-direct {v0, v1, v10, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50442
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const/16 v1, 0xfa

    const/16 v2, 0xfa

    const/4 v3, 0x5

    sget-object v4, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;->LANDSCAPE:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;

    new-array v5, v13, [Ljava/lang/Integer;

    .line 50443
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;-><init>(IIILcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;Ljava/util/List;Ljava/util/List;)V

    .line 50442
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50445
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 50446
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    invoke-direct {v0, v10, v10, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50447
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x7a

    invoke-direct {v0, v1, v10, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50448
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x7a

    const/16 v2, 0xf0

    invoke-direct {v0, v10, v1, v2, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50449
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const/16 v1, 0xfa

    const/16 v2, 0xfa

    const/4 v3, 0x5

    sget-object v4, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;->LANDSCAPE:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;

    new-array v5, v13, [Ljava/lang/Integer;

    const/4 v8, 0x2

    .line 50450
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;-><init>(IIILcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;Ljava/util/List;Ljava/util/List;)V

    .line 50449
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50452
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 50453
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0xf0

    invoke-direct {v0, v10, v10, v11, v1}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50454
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x7a

    invoke-direct {v0, v1, v10, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50455
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x7a

    const/16 v2, 0x7a

    invoke-direct {v0, v1, v2, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50456
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const/16 v1, 0xfa

    const/16 v2, 0xfa

    const/4 v3, 0x5

    sget-object v4, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;->PORTRAIT:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;

    new-array v5, v13, [Ljava/lang/Integer;

    .line 50457
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;-><init>(IIILcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;Ljava/util/List;Ljava/util/List;)V

    .line 50456
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50459
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 50460
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    invoke-direct {v0, v10, v10, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50461
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x7a

    const/16 v2, 0xf0

    invoke-direct {v0, v1, v10, v11, v2}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50462
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x7a

    invoke-direct {v0, v10, v1, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50463
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const/16 v1, 0xfa

    const/16 v2, 0xfa

    const/4 v3, 0x5

    sget-object v4, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;->PORTRAIT:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;

    new-array v5, v13, [Ljava/lang/Integer;

    .line 50464
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;-><init>(IIILcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;Ljava/util/List;Ljava/util/List;)V

    .line 50463
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50466
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 50467
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    invoke-direct {v0, v10, v10, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50468
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x7a

    invoke-direct {v0, v10, v1, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50469
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x7a

    const/16 v2, 0xf0

    invoke-direct {v0, v1, v10, v11, v2}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50470
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const/16 v1, 0xfa

    const/16 v2, 0xfa

    const/4 v3, 0x5

    sget-object v4, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;->PORTRAIT:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;

    new-array v5, v13, [Ljava/lang/Integer;

    const/4 v8, 0x2

    .line 50471
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;-><init>(IIILcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;Ljava/util/List;Ljava/util/List;)V

    .line 50470
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50473
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 50474
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    invoke-direct {v0, v10, v10, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50475
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x7a

    invoke-direct {v0, v1, v10, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50476
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x7a

    invoke-direct {v0, v10, v1, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50477
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x7a

    const/16 v2, 0x7a

    invoke-direct {v0, v1, v2, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50478
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const/16 v1, 0xfa

    const/16 v2, 0xfa

    const/4 v3, 0x5

    sget-object v4, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;->LANDSCAPE:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Integer;

    .line 50479
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v13

    const/4 v8, 0x2

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;-><init>(IIILcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;Ljava/util/List;Ljava/util/List;)V

    .line 50478
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50481
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 50482
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    invoke-direct {v0, v10, v10, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50483
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x7a

    invoke-direct {v0, v1, v10, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50484
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x7a

    invoke-direct {v0, v10, v1, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50485
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x7a

    const/16 v2, 0x7a

    invoke-direct {v0, v1, v2, v11, v11}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50486
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const/16 v1, 0xfa

    const/16 v2, 0xfa

    const/4 v3, 0x5

    sget-object v4, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;->PORTRAIT:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Integer;

    .line 50487
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v13

    const/4 v8, 0x2

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;-><init>(IIILcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;Ljava/util/List;Ljava/util/List;)V

    .line 50486
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50489
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 50490
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    invoke-direct {v0, v10, v10, v12, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50491
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    invoke-direct {v0, v10, v14, v12, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50492
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x27

    invoke-direct {v0, v14, v10, v12, v1}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50493
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x28

    const/16 v2, 0x27

    invoke-direct {v0, v14, v1, v12, v2}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50494
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x50

    const/16 v2, 0x27

    invoke-direct {v0, v14, v1, v12, v2}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50495
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const/16 v1, 0x7d

    const/16 v2, 0x7d

    const/4 v3, 0x3

    sget-object v4, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;->LANDSCAPE:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    .line 50496
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v13

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;-><init>(IIILcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;Ljava/util/List;Ljava/util/List;)V

    .line 50495
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50498
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 50499
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    invoke-direct {v0, v10, v10, v12, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50500
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x27

    invoke-direct {v0, v14, v10, v12, v1}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50501
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    invoke-direct {v0, v10, v14, v12, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50502
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x28

    const/16 v2, 0x27

    invoke-direct {v0, v14, v1, v12, v2}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50503
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x50

    const/16 v2, 0x27

    invoke-direct {v0, v14, v1, v12, v2}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50504
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const/16 v1, 0x7d

    const/16 v2, 0x7d

    const/4 v3, 0x3

    sget-object v4, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;->LANDSCAPE:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;

    new-array v5, v13, [Ljava/lang/Integer;

    const/4 v8, 0x2

    .line 50505
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;-><init>(IIILcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;Ljava/util/List;Ljava/util/List;)V

    .line 50504
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50507
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 50508
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x27

    invoke-direct {v0, v10, v10, v12, v1}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50509
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x28

    const/16 v2, 0x27

    invoke-direct {v0, v10, v1, v12, v2}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50510
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x50

    const/16 v2, 0x27

    invoke-direct {v0, v10, v1, v12, v2}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50511
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    invoke-direct {v0, v14, v10, v12, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50512
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    invoke-direct {v0, v14, v14, v12, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50513
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const/16 v1, 0x7d

    const/16 v2, 0x7d

    const/4 v3, 0x3

    sget-object v4, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;->LANDSCAPE:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v8, 0x3

    .line 50514
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v13

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;-><init>(IIILcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;Ljava/util/List;Ljava/util/List;)V

    .line 50513
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50516
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 50517
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    invoke-direct {v0, v10, v10, v12, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50518
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    invoke-direct {v0, v14, v10, v12, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50519
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x27

    invoke-direct {v0, v10, v14, v1, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50520
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x28

    const/16 v2, 0x27

    invoke-direct {v0, v1, v14, v2, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50521
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x50

    const/16 v2, 0x27

    invoke-direct {v0, v1, v14, v2, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50522
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const/16 v1, 0x7d

    const/16 v2, 0x7d

    const/4 v3, 0x3

    sget-object v4, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;->PORTRAIT:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    .line 50523
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v13

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;-><init>(IIILcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;Ljava/util/List;Ljava/util/List;)V

    .line 50522
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50525
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 50526
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    invoke-direct {v0, v10, v10, v12, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50527
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x27

    invoke-direct {v0, v10, v14, v1, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50528
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    invoke-direct {v0, v14, v10, v12, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50529
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x28

    const/16 v2, 0x27

    invoke-direct {v0, v1, v14, v2, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50530
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x50

    const/16 v2, 0x27

    invoke-direct {v0, v1, v14, v2, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50531
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const/16 v1, 0x7d

    const/16 v2, 0x7d

    const/4 v3, 0x3

    sget-object v4, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;->PORTRAIT:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;

    new-array v5, v13, [Ljava/lang/Integer;

    const/4 v8, 0x2

    .line 50532
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;-><init>(IIILcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;Ljava/util/List;Ljava/util/List;)V

    .line 50531
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50534
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 50535
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x27

    invoke-direct {v0, v10, v10, v1, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50536
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x28

    const/16 v2, 0x27

    invoke-direct {v0, v1, v10, v2, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50537
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    const/16 v1, 0x50

    const/16 v2, 0x27

    invoke-direct {v0, v1, v10, v2, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50538
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    invoke-direct {v0, v10, v14, v12, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50539
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;

    invoke-direct {v0, v14, v14, v12, v12}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50540
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const/16 v1, 0x7d

    const/16 v2, 0x7d

    const/4 v3, 0x3

    sget-object v4, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;->PORTRAIT:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v8, 0x3

    .line 50541
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v13

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;-><init>(IIILcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;Ljava/util/List;Ljava/util/List;)V

    .line 50540
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50543
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    sput-object v0, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->mAvailableLayouts:[Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    .line 50544
    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->mAvailableLayouts:[Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    goto/16 :goto_0
.end method

.method public static getLowResFrameFilename(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 50872
    const-string v0, "low-res-frame-"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathFromURI(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 13014
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 13015
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 13016
    if-nez v1, :cond_0

    .line 13024
    :goto_0
    return-object v3

    .line 13020
    :cond_0
    :try_start_0
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 13021
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 13027
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 13024
    :cond_1
    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 13027
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getScorer(Lcom/google/android/libraries/smartburst/scoring/FeatureScorerProvider;Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)Lcom/google/android/libraries/smartburst/scoring/FrameScorer;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 50931
    invoke-static {p0}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer;->create(Lcom/google/android/libraries/smartburst/scoring/FeatureScorerProvider;)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    const v1, 0x3ce19115    # 0.027535f

    .line 50932
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->setBias(F)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    .line 50933
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->setFeatureMeans([F)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    .line 50937
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->setFeatureStdDevs([F)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    new-array v1, v2, [F

    fill-array-data v1, :array_2

    .line 50941
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->setFeatureWeights([F)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    .line 50945
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->addFeature(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/smartburst/utils/FeatureType;->PERCEPTUAL_SHARPNESS:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 50946
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->addFeature(Lcom/google/android/libraries/smartburst/utils/FeatureType;)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/smartburst/utils/FeatureType;->MAX_GRID_SHARPNESS:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 50947
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->addFeature(Lcom/google/android/libraries/smartburst/utils/FeatureType;)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    .line 50948
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->build()Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer;

    move-result-object v0

    .line 50931
    return-object v0

    .line 50932
    :array_0
    .array-data 4
        0x3d40d0ab
        0x3f162ea1    # 0.586649f
        0x3f37e8de
    .end array-data

    .line 50933
    :array_1
    .array-data 4
        0x3e247c31    # 0.16063f
        0x3e3e746d
        0x3e0d8234
    .end array-data

    .line 50937
    :array_2
    .array-data 4
        -0x441bc558    # -0.006965f
        0x3f762b9d
        0x3e8c7842
    .end array-data
.end method

.method public static getScorer(Lcom/google/android/libraries/smartburst/scoring/FeatureScorerProvider;Lcom/google/android/libraries/smartburst/scoring/FrameScorer;Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)Lcom/google/android/libraries/smartburst/scoring/FrameScorer;
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 50893
    invoke-static {p0}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer;->create(Lcom/google/android/libraries/smartburst/scoring/FeatureScorerProvider;)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    const v1, -0x42844d01    # -0.06145f

    .line 50894
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->setBias(F)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    .line 50895
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->setFeatureMeans([F)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    .line 50904
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->setFeatureStdDevs([F)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    new-array v1, v2, [F

    fill-array-data v1, :array_2

    .line 50913
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->setFeatureWeights([F)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/smartburst/storage/Metadata;->PERCEPTUAL_SHARPNESS_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 50922
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->addFeature(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/smartburst/storage/Metadata;->MAX_GRID_SHARPNESS_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 50923
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->addFeature(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/smartburst/storage/Metadata;->LOWPASS_MOTION_SALIENCY_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 50924
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->addFeature(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_AVERAGE_SHARPNESS_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 50925
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->addFeature(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_MAXIMUM_SMILING_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 50926
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->addFeature(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_AVERAGE_SMILING_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 50927
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->addFeature(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    .line 50928
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->addFeature(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    .line 50929
    invoke-virtual {v0, p2}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->addFeature(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    move-result-object v0

    .line 50930
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->build()Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer;

    move-result-object v0

    .line 50893
    return-object v0

    .line 50894
    nop

    :array_0
    .array-data 4
        0x3f361f3a
        0x3f4a8c48
        0x3e82b607
        0x3cede332    # 0.029039f
        0x3ca84be4    # 0.020544f
        0x3c075d57    # 0.008262f
        0x3d0bc59c
        0x3cf544bb    # 0.02994f
    .end array-data

    .line 50895
    :array_1
    .array-data 4
        0x3dcbd3c3
        0x3d9c84b6
        0x3e17c06e
        0x3e037e2c
        0x3e047b24
        0x3e282dbe
        0x3e24c7b0
        0x3e249f51
    .end array-data

    .line 50904
    :array_2
    .array-data 4
        0x3f63def8
        -0x424be404    # -0.087944f
        0x3eb23316
        0x3e8b5393
        -0x42e03d57
        0x3cceb789    # 0.025234f
        0x3d266fd6
        -0x4302e87d    # -0.030895f
    .end array-data
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50323
    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown status code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "SUCCESS_CACHE"

    goto :goto_0

    :sswitch_1
    const-string v0, "SUCCESS"

    goto :goto_0

    :sswitch_2
    const-string v0, "SERVICE_MISSING"

    goto :goto_0

    :sswitch_3
    const-string v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_0

    :sswitch_4
    const-string v0, "SERVICE_DISABLED"

    goto :goto_0

    :sswitch_5
    const-string v0, "SIGN_IN_REQUIRED"

    goto :goto_0

    :sswitch_6
    const-string v0, "INVALID_ACCOUNT"

    goto :goto_0

    :sswitch_7
    const-string v0, "RESOLUTION_REQUIRED"

    goto :goto_0

    :sswitch_8
    const-string v0, "NETWORK_ERROR"

    goto :goto_0

    :sswitch_9
    const-string v0, "INTERNAL_ERROR"

    goto :goto_0

    :sswitch_a
    const-string v0, "SERVICE_INVALID"

    goto :goto_0

    :sswitch_b
    const-string v0, "DEVELOPER_ERROR"

    goto :goto_0

    :sswitch_c
    const-string v0, "LICENSE_CHECK_FAILED"

    goto :goto_0

    :sswitch_d
    const-string v0, "ERROR"

    goto :goto_0

    :sswitch_e
    const-string v0, "INTERRUPTED"

    goto :goto_0

    :sswitch_f
    const-string v0, "TIMEOUT"

    goto :goto_0

    :sswitch_10
    const-string v0, "CANCELED"

    goto :goto_0

    :sswitch_11
    const-string v0, "API_NOT_CONNECTED"

    goto :goto_0

    :sswitch_12
    const-string v0, "AUTH_API_INVALID_CREDENTIALS"

    goto :goto_0

    :sswitch_13
    const-string v0, "AUTH_API_ACCESS_FORBIDDEN"

    goto :goto_0

    :sswitch_14
    const-string v0, "AUTH_API_CLIENT_ERROR"

    goto :goto_0

    :sswitch_15
    const-string v0, "AUTH_API_SERVER_ERROR"

    goto :goto_0

    :sswitch_16
    const-string v0, "AUTH_TOKEN_ERROR"

    goto :goto_0

    :sswitch_17
    const-string v0, "AUTH_URL_RESOLUTION"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0xbb8 -> :sswitch_12
        0xbb9 -> :sswitch_13
        0xbba -> :sswitch_14
        0xbbb -> :sswitch_15
        0xbbc -> :sswitch_16
        0xbbd -> :sswitch_17
    .end sparse-switch
.end method

.method public static getStorageManager()Lcom/google/android/apps/lightcycle/storage/StorageManager;
    .locals 1

    .prologue
    .line 50289
    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->sInstance:Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;

    return-object v0
.end method

.method private static getUiOrientation(Landroid/view/WindowManager;)Lcom/google/android/apps/camera/util/layout/Orientation;
    .locals 1

    .prologue
    .line 50144
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 50145
    packed-switch v0, :pswitch_data_0

    .line 50155
    sget-object v0, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_0:Lcom/google/android/apps/camera/util/layout/Orientation;

    :goto_0
    return-object v0

    .line 50147
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->fromCcw(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    goto :goto_0

    .line 50149
    :pswitch_1
    const/16 v0, 0x5a

    invoke-static {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->fromCcw(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    goto :goto_0

    .line 50151
    :pswitch_2
    const/16 v0, 0xb4

    invoke-static {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->fromCcw(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    goto :goto_0

    .line 50153
    :pswitch_3
    const/16 v0, 0x10e

    invoke-static {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->fromCcw(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    goto :goto_0

    .line 50145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 51028
    const/4 v0, 0x0

    .line 51032
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 51038
    if-eqz v0, :cond_0

    .line 51039
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 51032
    :cond_0
    return-object v1

    .line 51034
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    .line 51035
    goto :goto_0

    .line 51038
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 51039
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw v1
.end method

.method public static hasRefocusCapture(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 50057
    .line 50059
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "camera:refocus_enabled"

    .line 50058
    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 50060
    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/camera/util/PhotoSphereHelper;->isLowRamDevice(Landroid/app/ActivityManager;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hollowCircleDrawable(IF)Landroid/graphics/drawable/ShapeDrawable;
    .locals 3

    .prologue
    .line 50191
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 50192
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 50193
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 50194
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50195
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 50196
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50197
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50198
    return-object v1
.end method

.method public static imageFormatToString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 50211
    sparse-switch p0, :sswitch_data_0

    .line 50233
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 50234
    sparse-switch p0, :sswitch_data_1

    .line 50242
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 50243
    packed-switch p0, :pswitch_data_0

    .line 50249
    :cond_2
    sparse-switch p0, :sswitch_data_2

    .line 50270
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 50213
    :sswitch_0
    const-string v0, "DEPTH16"

    goto :goto_0

    .line 50215
    :sswitch_1
    const-string v0, "DEPTH_POINT_CLOUD"

    goto :goto_0

    .line 50217
    :sswitch_2
    const-string v0, "FLEX_RGB_888"

    goto :goto_0

    .line 50219
    :sswitch_3
    const-string v0, "FLEX_RGBA_8888"

    goto :goto_0

    .line 50221
    :sswitch_4
    const-string v0, "PRIVATE"

    goto :goto_0

    .line 50223
    :sswitch_5
    const-string v0, "RAW12"

    goto :goto_0

    .line 50225
    :sswitch_6
    const-string v0, "YUV_422_888"

    goto :goto_0

    .line 50227
    :sswitch_7
    const-string v0, "YUV_444_888"

    goto :goto_0

    .line 50229
    :sswitch_8
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 50236
    :sswitch_9
    const-string v0, "RAW10"

    goto :goto_0

    .line 50238
    :sswitch_a
    const-string v0, "RAW_SENSOR"

    goto :goto_0

    .line 50245
    :pswitch_0
    const-string v0, "YUV_420_888"

    goto :goto_0

    .line 50251
    :sswitch_b
    const-string v0, "JPEG"

    goto :goto_0

    .line 50253
    :sswitch_c
    const-string v0, "NV16"

    goto :goto_0

    .line 50255
    :sswitch_d
    const-string v0, "NV21"

    goto :goto_0

    .line 50257
    :sswitch_e
    const-string v0, "RGB_565"

    goto :goto_0

    .line 50259
    :sswitch_f
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 50261
    :sswitch_10
    const-string v0, "YUV_420_888"

    goto :goto_0

    .line 50263
    :sswitch_11
    const-string v0, "YUY2"

    goto :goto_0

    .line 50265
    :sswitch_12
    const-string v0, "YV12"

    goto :goto_0

    .line 50267
    :sswitch_13
    const-string v0, "PRIVATE"

    goto :goto_0

    .line 50211
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x22 -> :sswitch_4
        0x26 -> :sswitch_5
        0x27 -> :sswitch_6
        0x28 -> :sswitch_7
        0x29 -> :sswitch_2
        0x2a -> :sswitch_3
        0x101 -> :sswitch_1
        0x44363159 -> :sswitch_0
    .end sparse-switch

    .line 50234
    :sswitch_data_1
    .sparse-switch
        0x20 -> :sswitch_a
        0x25 -> :sswitch_9
    .end sparse-switch

    .line 50243
    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch

    .line 50249
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_f
        0x4 -> :sswitch_e
        0x10 -> :sswitch_c
        0x11 -> :sswitch_d
        0x14 -> :sswitch_11
        0x22 -> :sswitch_13
        0x23 -> :sswitch_10
        0x100 -> :sswitch_b
        0x32315659 -> :sswitch_12
    .end sparse-switch
.end method

.method public static init(Landroid/content/Context;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/storage/FileNamer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50287
    new-instance v0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;

    invoke-direct {v0, p1, p2}, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;-><init>(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/storage/FileNamer;)V

    sput-object v0, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->sInstance:Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;

    .line 50288
    return-void
.end method

.method public static intersection(Ljava/util/Collection;)Lcom/google/android/apps/camera/async/Lifetime;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;)",
            "Lcom/google/android/apps/camera/async/Lifetime;"
        }
    .end annotation

    .prologue
    .line 50182
    new-instance v1, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    .line 50183
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Lifetime;

    .line 50184
    invoke-static {v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->addAsChild(Lcom/google/android/apps/camera/async/Lifetime;Lcom/google/android/apps/camera/async/Lifetime;)V

    goto :goto_0

    .line 50186
    :cond_0
    return-object v1
.end method

.method public static isBlackListed(Lcom/android/camera/util/Size;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 48053
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 48054
    array-length v1, v0

    if-nez v1, :cond_0

    .line 48055
    const/4 v0, 0x0

    .line 48058
    :goto_0
    return v0

    .line 48057
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 48058
    invoke-static {p0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isBlackListed(Lcom/android/camera/util/Size;Ljava/util/Set;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isBlackListed(Lcom/android/camera/util/Size;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/Size;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 48062
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48063
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCollagePhoto(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 10049
    invoke-static {p0}, Lcom/android/camera/util/XmpUtil;->extractXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v1

    .line 10050
    if-nez v1, :cond_1

    .line 10065
    :cond_0
    :goto_0
    return v0

    .line 10055
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v2

    const-string v3, "http://ns.google.com/photos/1.0/creations/"

    const-string v4, "GCreations"

    .line 10056
    invoke-interface {v2, v3, v4}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10058
    const-string v2, "http://ns.google.com/photos/1.0/creations/"

    const-string v3, "Type"

    invoke-interface {v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10060
    const-string v0, "http://ns.google.com/photos/1.0/creations/"

    const-string v2, "Type"

    .line 10061
    invoke-interface {v1, v0, v2}, Lcom/adobe/xmp/XMPMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10063
    const-string v1, "GCameraCollage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 10066
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 10067
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not fetch XMP_TYPE_BURST_COLLAGE TAG from "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isEmulator()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50972
    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isEmulator:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 50973
    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isEmulator:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 50988
    :goto_0
    return v0

    .line 50976
    :cond_0
    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 50977
    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->exception:Ljava/lang/Exception;

    throw v0

    .line 50981
    :cond_1
    :try_start_0
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "sdk_google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isEmulator:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50988
    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isEmulator:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 50982
    :catch_0
    move-exception v0

    .line 50984
    sput-object v0, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->exception:Ljava/lang/Exception;

    .line 50985
    throw v0
.end method

.method public static isMainThread()Z
    .locals 2

    .prologue
    .line 50993
    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->sMainThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 50994
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->sMainThread:Ljava/lang/Thread;

    .line 50996
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->sMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMediaStoreImageUri(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 50162
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isVideoUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMediaStoreUri(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 50158
    if-eqz p0, :cond_0

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "media"

    .line 50159
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 50158
    goto :goto_0
.end method

.method public static isMediaStoreVideoUri(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 50161
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isVideoUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnScreenLogEnabled()Z
    .locals 1

    .prologue
    .line 16039
    const-string v0, "persist.camera.onscreen_log"

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isPropertyOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOnScreenSystemHealthInfoEnabled()Z
    .locals 1

    .prologue
    .line 16043
    const-string v0, "persist.camera.syshealth_info"

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isPropertyOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPackageSide()Z
    .locals 2

    .prologue
    .line 50388
    sget-boolean v0, Lcom/google/android/gms/common/internal/zzd;->zzavq:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzni;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzni;->zzqn()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isProbablyEmulator()Z
    .locals 3

    .prologue
    .line 50989
    :try_start_0
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isEmulator()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 50992
    :goto_0
    return v0

    .line 50990
    :catch_0
    move-exception v0

    .line 50991
    const-string v1, "IsEmulator"

    const-string v2, "Could not determine if emulator.  Assuming false."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50992
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPropertyOn(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 16023
    const-string v0, "1"

    invoke-static {}, Lcom/android/camera/util/SystemProperties;->instance()Lcom/android/camera/util/SystemProperties;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/util/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRGBZ(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 6

    .prologue
    .line 50061
    const/4 v0, 0x0

    .line 50063
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 50064
    :try_start_1
    invoke-static {v1}, Lcom/google/android/apps/refocus/image/RGBZ;->isValid(Ljava/io/InputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 50068
    if-eqz v1, :cond_0

    .line 50070
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 50066
    :cond_0
    :goto_0
    return v0

    .line 50071
    :catch_0
    move-exception v1

    .line 50072
    const-string v2, "RefocusHelper"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unable to close stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50068
    :catch_1
    move-exception v1

    :goto_1
    if-eqz v0, :cond_1

    .line 50070
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 50066
    :cond_1
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 50071
    :catch_2
    move-exception v0

    .line 50072
    const-string v1, "RefocusHelper"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to close stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 50068
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    if-eqz v1, :cond_2

    .line 50070
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 50073
    :cond_2
    :goto_4
    throw v0

    .line 50071
    :catch_3
    move-exception v1

    .line 50072
    const-string v2, "RefocusHelper"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unable to close stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 50068
    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static isThumbnailSize(II)Z
    .locals 1

    .prologue
    .line 50163
    const/16 v0, 0x200

    if-gt p0, v0, :cond_0

    const/16 v0, 0x180

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTogglingEnabled()Z
    .locals 1

    .prologue
    .line 50404
    const/4 v0, 0x0

    return v0
.end method

.method public static isUpperCase(C)Z
    .locals 1

    .prologue
    .line 51021
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidSamplingFactor(II)Z
    .locals 1

    .prologue
    .line 45082
    mul-int/lit8 v0, p1, 0x2

    rem-int v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVideoUri(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 50160
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string v1, "video"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static lerp(FFF)F
    .locals 1

    .prologue
    .line 50028
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static loadAnimationMetadata(Lcom/android/camera/data/Metadata$Builder;Lcom/android/camera/data/FilmstripItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 12017
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 12018
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 12021
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemAttributes;->isAnimation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12022
    const-string v3, "Burst_Cover_GIF_Action_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12023
    invoke-virtual {p0, v0}, Lcom/android/camera/data/Metadata$Builder;->setIsAnimation(Z)Lcom/android/camera/data/Metadata$Builder;

    .line 12036
    :goto_0
    return v0

    .line 12029
    :cond_0
    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isCollagePhoto(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12030
    const-string v1, "Burst_Cover_Collage_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12031
    invoke-virtual {p0, v0}, Lcom/android/camera/data/Metadata$Builder;->setIsCollage(Z)Lcom/android/camera/data/Metadata$Builder;

    goto :goto_0

    .line 12036
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadFromDirectory(Ljava/io/File;Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;)Lcom/google/android/libraries/smartburst/media/SummaryBuilder;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;",
            ")",
            "Lcom/google/android/libraries/smartburst/media/SummaryBuilder",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 50838
    new-instance v3, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    invoke-direct {v3}, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;-><init>()V

    .line 50839
    invoke-interface {p1, p0}, Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;->listSummaryFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v6

    .line 50840
    if-eqz v6, :cond_0

    array-length v0, v6

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v3

    .line 50867
    :goto_0
    return-object v0

    .line 50845
    :cond_1
    const v0, 0x7fffffff

    .line 50846
    invoke-static {v4, v4}, Lcom/google/android/libraries/smartburst/utils/Size;->of(II)Lcom/google/android/libraries/smartburst/utils/Size;

    move-result-object v1

    .line 50847
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 50848
    array-length v8, v6

    move v5, v4

    :goto_1
    if-ge v5, v8, :cond_2

    aget-object v2, v6, v5

    .line 50849
    new-instance v9, Lcom/google/android/libraries/smartburst/media/JpegBitmapLoader;

    invoke-direct {v9, v2}, Lcom/google/android/libraries/smartburst/media/JpegBitmapLoader;-><init>(Ljava/io/File;)V

    .line 50850
    invoke-interface {v7, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50851
    invoke-virtual {v9}, Lcom/google/android/libraries/smartburst/media/JpegBitmapLoader;->getWidth()I

    move-result v2

    invoke-virtual {v9}, Lcom/google/android/libraries/smartburst/media/JpegBitmapLoader;->getHeight()I

    move-result v10

    mul-int/2addr v2, v10

    .line 50852
    if-ge v2, v0, :cond_4

    .line 50854
    invoke-virtual {v9}, Lcom/google/android/libraries/smartburst/media/JpegBitmapLoader;->getWidth()I

    move-result v0

    invoke-virtual {v9}, Lcom/google/android/libraries/smartburst/media/JpegBitmapLoader;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/utils/Size;->of(II)Lcom/google/android/libraries/smartburst/utils/Size;

    move-result-object v0

    move v1, v2

    .line 50848
    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v13, v0

    move v0, v1

    move-object v1, v13

    goto :goto_1

    .line 50859
    :cond_2
    array-length v5, v6

    move v2, v4

    :goto_3
    if-ge v2, v5, :cond_3

    aget-object v4, v6, v2

    .line 50861
    :try_start_0
    invoke-interface {p1, v4}, Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;->timestampOfFile(Ljava/io/File;)J

    move-result-wide v8

    new-instance v10, Lcom/google/android/libraries/smartburst/media/RescalingJpegBitmapLoader;

    .line 50862
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/media/JpegBitmapLoader;

    iget v11, v1, Lcom/google/android/libraries/smartburst/utils/Size;->width:I

    iget v12, v1, Lcom/google/android/libraries/smartburst/utils/Size;->height:I

    invoke-direct {v10, v0, v11, v12}, Lcom/google/android/libraries/smartburst/media/RescalingJpegBitmapLoader;-><init>(Lcom/google/android/libraries/smartburst/media/JpegBitmapLoader;II)V

    .line 50871
    new-instance v0, Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandle;

    invoke-static {v10}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->to(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandle;-><init>(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)V

    .line 50870
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->makeSafe(Lcom/google/android/libraries/smartburst/utils/handles/SharedHandle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;

    move-result-object v0

    .line 50868
    const/4 v10, 0x0

    invoke-virtual {v3, v8, v9, v0, v10}, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;->add(JLcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;Z)V
    :try_end_0
    .catch Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser$FieldInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50859
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 50863
    :catch_0
    move-exception v0

    .line 50864
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Couldn\'t get timestamp from file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    move-object v0, v3

    .line 50867
    goto/16 :goto_0

    :cond_4
    move-object v13, v1

    move v1, v0

    move-object v0, v13

    goto :goto_2
.end method

.method public static loadPanoramaMetadata(Landroid/content/Context;Landroid/net/Uri;Lcom/android/camera/data/Metadata$Builder;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 14018
    .line 14019
    invoke-static {p0, p1}, Lcom/android/camera/util/PhotoSphereHelper;->getPanoramaMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    move-result-object v1

    .line 14022
    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/camera/util/PhotoSphereHelper;->NOT_PANORAMA:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    if-ne v1, v2, :cond_1

    .line 14023
    :cond_0
    const/4 v0, 0x0

    .line 14030
    :goto_0
    return v0

    .line 14026
    :cond_1
    invoke-virtual {p2, v0}, Lcom/android/camera/data/Metadata$Builder;->setPanorama(Z)Lcom/android/camera/data/Metadata$Builder;

    .line 14027
    iget-boolean v2, v1, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;->isPanorama360:Z

    invoke-virtual {p2, v2}, Lcom/android/camera/data/Metadata$Builder;->setPanorama360(Z)Lcom/android/camera/data/Metadata$Builder;

    .line 14028
    iget-boolean v1, v1, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;->usePanoramaViewer:Z

    invoke-virtual {p2, v1}, Lcom/android/camera/data/Metadata$Builder;->setUsePanoramaViewer(Z)Lcom/android/camera/data/Metadata$Builder;

    goto :goto_0
.end method

.method public static loadRgbzMetadata(Landroid/content/Context;Landroid/net/Uri;Lcom/android/camera/data/Metadata$Builder;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 15020
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isRGBZ(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15021
    invoke-virtual {p2, v0}, Lcom/android/camera/data/Metadata$Builder;->setHasRgbzData(Z)Lcom/android/camera/data/Metadata$Builder;

    .line 15024
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static millisToMicrosInt(D)I
    .locals 2

    .prologue
    .line 50278
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p0

    double-to-int v0, v0

    return v0
.end method

.method public static millisToNanos(I)I
    .locals 1

    .prologue
    .line 50276
    const v0, 0x5f5e100

    return v0
.end method

.method public static millisToNanosLong(I)J
    .locals 2

    .prologue
    .line 50277
    const-wide/32 v0, 0x5f5e100

    return-wide v0
.end method

.method public static millisToSeconds(J)J
    .locals 2

    .prologue
    .line 50280
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static millisToSecondsFloat(J)F
    .locals 2

    .prologue
    .line 50279
    long-to-float v0, p0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static nanosToMicrosInt(J)I
    .locals 2

    .prologue
    .line 50272
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static nanosToMillis(J)J
    .locals 2

    .prologue
    .line 50274
    const-wide/32 v0, 0xf4240

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static nanosToMillisDouble(J)D
    .locals 4

    .prologue
    .line 50273
    long-to-double v0, p0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static nanosToSeconds(F)F
    .locals 1

    .prologue
    .line 50275
    const v0, 0x4e6e6b28    # 1.0E9f

    div-float v0, p0, v0

    return v0
.end method

.method public static newProxy(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/InvocationHandler;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 51022
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51023
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const-string v1, "%s is not an interface"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 51026
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 51025
    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 51027
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static print(Lcom/google/protobuf/nano/MessageNano;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 51040
    if-nez p0, :cond_0

    .line 51041
    const-string v0, ""

    .line 51052
    :goto_0
    return-object v0

    .line 51044
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 51046
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1, p0, v2, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 51052
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51047
    :catch_0
    move-exception v0

    .line 51048
    const-string v1, "Error printing proto: "

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 51049
    :catch_1
    move-exception v0

    .line 51050
    const-string v1, "Error printing proto: "

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 51053
    if-eqz p1, :cond_a

    .line 51059
    instance-of v0, p1, Lcom/google/protobuf/nano/MessageNano;

    if-eqz v0, :cond_b

    .line 51060
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 51061
    if-eqz p0, :cond_0

    .line 51062
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " <\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51063
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51065
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 51071
    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    move v3, v1

    :goto_0
    if-ge v3, v7, :cond_5

    aget-object v0, v6, v3

    .line 51072
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    .line 51073
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    .line 51074
    const-string v9, "cachedSize"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 51079
    and-int/lit8 v9, v2, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    and-int/lit8 v2, v2, 0x8

    const/16 v9, 0x8

    if-eq v2, v9, :cond_1

    const-string v2, "_"

    .line 51081
    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "_"

    .line 51082
    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51083
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 51084
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 51086
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51087
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 51090
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_2

    .line 51091
    invoke-static {v8, v9, p2, p3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 51071
    :cond_1
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 51093
    :cond_2
    if-nez v9, :cond_3

    move v0, v1

    :goto_2
    move v2, v1

    .line 51094
    :goto_3
    if-ge v2, v0, :cond_1

    .line 51095
    invoke-static {v9, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    .line 51096
    invoke-static {v8, v10, p2, p3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 51094
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 51093
    :cond_3
    invoke-static {v9}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    goto :goto_2

    .line 51100
    :cond_4
    invoke-static {v8, v9, p2, p3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    goto :goto_1

    .line 51108
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v6, v3

    move v2, v1

    :goto_4
    if-ge v2, v6, :cond_9

    aget-object v0, v3, v2

    .line 51109
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 51112
    const-string v7, "set"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 51113
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 51117
    :try_start_0
    const-string v8, "has"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51122
    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51128
    :try_start_1
    const-string v8, "get"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 51133
    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v0, p2, p3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 51108
    :cond_6
    :goto_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 51117
    :cond_7
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 51119
    :catch_0
    move-exception v0

    goto :goto_7

    .line 51128
    :cond_8
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    .line 51130
    :catch_1
    move-exception v0

    goto :goto_7

    .line 51136
    :cond_9
    if-eqz p0, :cond_a

    .line 51137
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 51138
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51154
    :cond_a
    :goto_8
    return-void

    .line 51142
    :cond_b
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51143
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51144
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 51145
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51146
    const-string v1, "\""

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51152
    :goto_9
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 51147
    :cond_c
    instance-of v0, p1, [B

    if-eqz v0, :cond_d

    .line 51148
    check-cast p1, [B

    invoke-static {p1, p3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->appendQuotedBytes([BLjava/lang/StringBuffer;)V

    goto :goto_9

    .line 51150
    :cond_d
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_9
.end method

.method public static provideActivityLayoutManager(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;Lcom/google/android/apps/camera/async/MainThread;)Lcom/android/camera/util/layout/ActivityLayoutManager;
    .locals 0

    .prologue
    .line 50140
    invoke-static {p2, p0, p1}, Lcom/android/camera/util/lifecycle/Lifecycles;->addObserverOnMainThread$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQDC5KMSL38E9IM2P1R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FDHKM4SJ1E9KMASPFEDQ6IT33D0NMOQB6CLHNIORCCKNKOQB6CLHNIORCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TIILG_(Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V

    .line 50141
    return-object p1
.end method

.method public static provideAdvicePreviewListener(Lcom/android/camera/advice/AdvicePreviewListener;Lcom/android/camera/util/flags/Flags;Ljavax/inject/Provider;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/advice/AdvicePreviewListener;",
            "Lcom/android/camera/util/flags/Flags;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9050
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static provideAdviceUiController(Landroid/content/Context;Lcom/android/camera/util/flags/Flags;Lcom/google/android/apps/camera/async/MainThread;)Lcom/google/android/apps/camera/advice/AdviceUiController;
    .locals 1

    .prologue
    .line 8081
    new-instance v0, Lcom/google/android/apps/camera/advice/AdviceUiControllerNoOpImpl;

    invoke-direct {v0}, Lcom/google/android/apps/camera/advice/AdviceUiControllerNoOpImpl;-><init>()V

    return-object v0
.end method

.method public static provideApiHelper()Lcom/android/camera/util/ApiHelper;
    .locals 1

    .prologue
    .line 50109
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->instance()Lcom/android/camera/util/ApiHelper;

    move-result-object v0

    return-object v0
.end method

.method public static provideApplicationVersion()Lcom/android/camera/util/app/AppProperties$BuildSource;
    .locals 1

    .prologue
    .line 50137
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getBuildSource()Lcom/android/camera/util/app/AppProperties$BuildSource;

    move-result-object v0

    return-object v0
.end method

.method public static provideBurstImageSaver$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQJDTJ78TR1E9IKKS35CT4MQOB7CL9M2TJ5E8TIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5EDGNCPBI5T0N6UBECD9MIRJ7DHIKIRB1CTIL6OBMCLP3M___(Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;)Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;",
            ")",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;"
        }
    .end annotation

    .prologue
    .line 37030
    return-object p0
.end method

.method public static provideBurstReprocessingImageSaver$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQ1EDSMSOQJD5N6ER3595MM2PR5ADGNCPBI7D66KOBMC4NNAT39DGNK6RRCDHIM6T39DTN3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NK2SRPDPHL6QBECTM6AIBDC5JMAKR1EPIN4EO_(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Ljava/util/Collection;)Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;)",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;"
        }
    .end annotation

    .prologue
    .line 36047
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/FixedReprocessingParamImageSaver;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/imagesaver/reprocessing/FixedReprocessingParamImageSaver;-><init>(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static provideCamcorderEncoderProfileFactory(Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;)Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;
    .locals 0

    .prologue
    .line 11084
    return-object p0
.end method

.method public static provideCamcorderManager(Lcom/android/camera/camcorder/CamcorderManagerImpl;)Lcom/android/camera/camcorder/CamcorderManager;
    .locals 0

    .prologue
    .line 11044
    return-object p0
.end method

.method public static provideCamcorderProfileFactory(Lcom/android/camera/camcorder/media/CamcorderProfileFactoryImpl;)Lcom/android/camera/camcorder/media/CamcorderProfileFactory;
    .locals 0

    .prologue
    .line 11091
    return-object p0
.end method

.method public static provideCameraHandlerThread()Landroid/os/HandlerThread;
    .locals 2

    .prologue
    .line 11057
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CamcorderCameraHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static provideCameraServices$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGM6T39EPKN8U9FCDNMSPJ9CSNK6OBDCLP62KR5E9R6IOR5ED4MQS3C7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2ORKD5R6IT3P5THMURJ6D5JIUGR1DLIN4OAJCLP7CQB3CLPJM___(Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;)Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;
    .locals 0

    .prologue
    .line 8020
    return-object p0
.end method

.method public static provideCameraStarter$5166KOBMC4NNAT39DGNL6PBK7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRCD5J6AORPCDM6ABQ3C5MMASJ1ADQ62SJKCLP3M___(Ljava/util/Set;)Lcom/google/android/libraries/smartburst/utils/SparseArrays;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/lifecycle/StartTask;",
            ">;)",
            "Lcom/google/android/libraries/smartburst/utils/SparseArrays;"
        }
    .end annotation

    .prologue
    .line 38049
    new-instance v0, Lcom/google/android/libraries/smartburst/utils/SparseArrays;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/utils/SparseArrays;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static provideCaptureSessionManager(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/storage/detachablefile/DetachableFolder;Lcom/android/camera/error/ShotFailureHandler;Lcom/android/camera/storage/FileNamerManager;Lcom/android/camera/storage/FilesProxy;Lcom/android/camera/storage/MediaSaver;Lcom/android/camera/storage/Storage;Lcom/google/android/apps/camera/async/MainThread;)Lcom/android/camera/session/CaptureSessionManager;
    .locals 11

    .prologue
    .line 46036
    new-instance v7, Lcom/android/camera/session/PlaceholderManager;

    move-object/from16 v0, p7

    invoke-direct {v7, p0, v0}, Lcom/android/camera/session/PlaceholderManager;-><init>(Landroid/content/Context;Lcom/android/camera/storage/Storage;)V

    .line 46038
    move-object/from16 v0, p5

    invoke-static {p0, v0}, Lcom/android/camera/session/SessionStorageManagerImpl;->create(Landroid/content/Context;Lcom/android/camera/storage/FilesProxy;)Lcom/android/camera/session/SessionStorageManager;

    move-result-object v10

    .line 46039
    new-instance v1, Lcom/android/camera/session/StackSaverFactory;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/session/StackSaverFactory;-><init>(Landroid/content/ContentResolver;Lcom/android/camera/storage/detachablefile/DetachableFolder;Lcom/android/camera/storage/FileNamerManager;Lcom/android/camera/storage/FilesProxy;Lcom/android/camera/storage/Storage;)V

    .line 46042
    new-instance v8, Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor;

    const-string v2, "CaptureSession"

    .line 46044
    invoke-static {v2}, Lcom/google/android/apps/camera/async/Futures2;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-direct {v8, v0, v2}, Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor;-><init>(Lcom/google/android/apps/camera/async/MainThread;Ljava/util/concurrent/Executor;)V

    .line 46045
    new-instance v2, Lcom/android/camera/session/CaptureSessionFactoryImpl;

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, v7

    move-object v6, v10

    move-object v7, v1

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/session/CaptureSessionFactoryImpl;-><init>(Lcom/android/camera/storage/FilesProxy;Lcom/android/camera/storage/MediaSaver;Lcom/android/camera/session/PlaceholderManager;Lcom/android/camera/session/SessionStorageManager;Lcom/android/camera/session/StackSaverFactory;Ljava/util/concurrent/Executor;Lcom/android/camera/storage/Storage;)V

    .line 46054
    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl;

    new-instance v5, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct {v5}, Lcom/google/android/apps/camera/async/MainThread;-><init>()V

    new-instance v6, Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-direct {v6}, Lcom/google/android/apps/camera/util/time/NanosecondClock;-><init>()V

    move-object v3, v10

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/session/CaptureSessionManagerImpl;-><init>(Lcom/android/camera/session/CaptureSessionFactory;Lcom/android/camera/session/SessionStorageManager;Lcom/android/camera/error/ShotFailureHandler;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/util/time/NanosecondClock;)V

    return-object v1
.end method

.method public static provideCodecManager(Lcom/android/camera/camcorder/media/MediaCodecManagerImpl;)Lcom/android/camera/camcorder/media/MediaCodecManager;
    .locals 0

    .prologue
    .line 11050
    return-object p0
.end method

.method public static provideContentValuesProxyFactory$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPN8RRIC5JMABRDCLI6IOBJEHNN4P9F8DNMST35DPQ5COBCELIN6K3IDTS7IIBDE1M28HJ1CDQ6USJP7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6T3FE9GMEP9FDLIM8QB1EDQ6USJ55T1MURJKCLN78LJ1DHQMASQGE9NNGU948PGM6T3FE9SJM___(Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;)Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;
    .locals 0

    .prologue
    .line 49015
    return-object p0
.end method

.method public static provideCropRegion(Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion;)Lcom/google/android/apps/camera/async/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion;",
            ")",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26026
    return-object p0
.end method

.method public static provideDefaultShutdownTaskSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38054
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static provideDefaultStreamConfig(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33031
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 33033
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;

    .line 33034
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33037
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 33074
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;->of(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;

    move-result-object v0

    .line 33038
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 33041
    :cond_1
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static provideDelayedShutdown(Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown;)Lcom/google/android/apps/camera/async/Lifetime;
    .locals 1

    .prologue
    .line 38061
    const/16 v0, 0x7d0

    invoke-static {p0, v0}, Lcom/google/android/apps/camera/async/DelayedLifetime;->create(Lcom/google/android/apps/camera/async/Lifetime;I)Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    return-object v0
.end method

.method public static provideDeviceOrientation(Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;)Lcom/android/camera/util/deviceorientation/DeviceOrientation;
    .locals 0

    .prologue
    .line 50138
    return-object p0
.end method

.method public static provideDisplayDisplayMetrics(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;
    .locals 2

    .prologue
    .line 50207
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 50208
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 50209
    return-object v0
.end method

.method public static provideFatalErrorBroadcaster(Lcom/android/camera/error/FatalErrorBroadcaster;)Lcom/android/camera/error/FatalErrorHandler;
    .locals 0

    .prologue
    .line 18022
    return-object p0
.end method

.method public static provideFlags$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQN8QBC5TJ6OOB7ECNL4PBCCLGN6PA6DHGMESPR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQN8QBC5TJ6OOB7ECNKCR31CTPJM___(Lcom/android/camera/util/flags/Flags;)Lcom/android/camera/util/flags/Flags;
    .locals 0

    .prologue
    .line 50139
    return-object p0
.end method

.method public static provideFlashIndicator(Lcom/android/camera/one/v2/core/ResponseManager;Lcom/android/camera/one/v2/photo/flash/AutoFlashIndicator;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/ResponseManager;",
            "Lcom/android/camera/one/v2/photo/flash/AutoFlashIndicator;",
            ")",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42019
    invoke-static {p1}, Lcom/android/camera/one/v2/core/FrameServerModule;->forFinalMetadata(Lcom/google/android/apps/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 42020
    return-object p1
.end method

.method public static provideFrameAllocator(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;
    .locals 1

    .prologue
    .line 27059
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    invoke-interface {p0, v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;->createAllocator([Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    move-result-object v0

    return-object v0
.end method

.method public static provideHdrPlusImageCaptureAvailability(Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/memory/MemoryManager;Lcom/android/camera/hdrplus/HdrPlusSession;)Lcom/google/android/apps/camera/async/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/memory/MemoryManager;",
            "Lcom/android/camera/hdrplus/HdrPlusSession;",
            ")",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42034
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42036
    invoke-interface {p1}, Lcom/android/camera/one/v2/core/FrameServer;->getAvailability()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42040
    sget-object v1, Lcom/android/camera/memory/Feature;->HDR_PLUS:Lcom/android/camera/memory/Feature;

    invoke-virtual {p2, v1}, Lcom/android/camera/memory/MemoryManager;->getAvailability(Lcom/android/camera/memory/Feature;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42042
    invoke-interface {p3}, Lcom/android/camera/hdrplus/HdrPlusSession;->getInitParams()Lcom/google/googlex/gcam/InitParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/gcam/InitParams;->getMax_full_metering_sweep_frames()I

    move-result v1

    .line 42043
    invoke-interface {p3}, Lcom/android/camera/hdrplus/HdrPlusSession;->getInitParams()Lcom/google/googlex/gcam/InitParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/gcam/InitParams;->getMax_payload_frames()I

    move-result v2

    .line 42045
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42047
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;->getAvailableImageCount()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/apps/camera/async/Observables;->greaterOrEqual(Lcom/google/android/apps/camera/async/Observable;Ljava/lang/Comparable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    .line 42048
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42051
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;->getAvailableImageCount()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/camera/async/Observables;->greaterOrEqual(Lcom/google/android/apps/camera/async/Observable;Ljava/lang/Comparable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    .line 42052
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42054
    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->and(Ljava/util/Collection;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static provideHfrTorchInitializer$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHFAPKM8PBFAHNN4OR8ADQ62T35CDK62SJK7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNKQOB9DPA6GSJ5C5I3MJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T874RRGCLP78U9R9HGMSP3IDTKM8BR3DTN78PBEEGNN4PBJ5T96ASRFELP66PBJ7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAQ9FCDNMST3IDTM6OPBI5TKMSQBKD5GMOQBQCLP76BQMD5I6ARQKDTP66Q2JEHGN8PB3D1GN4T29DPKN8QB1DHKNKPBI7C______(Lcom/android/camera/ui/controller/VideoTorchStatechart;Ljavax/inject/Provider;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/async/Observable;Landroid/content/res/Resources;)Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/controller/VideoTorchStatechart;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Landroid/content/res/Resources;",
            ")",
            "Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;"
        }
    .end annotation

    .prologue
    .line 49041
    new-instance v0, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;-><init>(Lcom/android/camera/ui/controller/VideoTorchStatechart;Ljavax/inject/Provider;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/async/Observable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static provideImageCaptureCommand$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUGBLEHNKCR31EDK46RRDDLGMSP2JETKN8OR8CLP4COB3EHNN4U9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUORFDLMM2RJ4ECNL6QBECTM6AJJF8PM62SR88DNMQRB1DPI4COB3EHNN4U9R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQ9DLGMEPA3C5O78TBICL1MURBDC5N68EO_(Lcom/google/common/collect/Sets;Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 1

    .prologue
    .line 39078
    .line 40072
    invoke-static {}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->noOp()Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->create(Lcom/android/camera/one/v2/common/RequestTransformer;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v0

    .line 39078
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Sets;->create(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v0

    return-object v0
.end method

.method public static provideImageCaptureCommand$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUGBLEHNKCR31EDK46RRDDLGMSP2JETKN8OR8CLP4COB3EHNN4U9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUORFDLMM2RJ4ECNL6QBECTM6AMJJDH1MURBDC5N68HJ1CDQ6USJP7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUKR9DPJMOPAEDT36OOBJD11MURBDC5N68HJ1CDQ6USJP7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPF95MM2PR58DGN0T3LE9IK6RRDDLGMSP1R(Lcom/google/common/collect/Sets;Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 3

    .prologue
    .line 40112
    const/16 v0, 0x64

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->millisToNanosLong(I)J

    move-result-wide v0

    .line 41072
    invoke-static {}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->noOp()Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->create(Lcom/android/camera/one/v2/common/RequestTransformer;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v2

    .line 40116
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;->create(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;J)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Sets;->create(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v0

    return-object v0
.end method

.method public static provideImageCaptureCommand$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUKRKC5Q6AL3IC5HMMQBECT4MQOB7CL1M2S3KELP6AGRFDLMM2RJ47CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPF95MM2PR58DGN0T3LE9IK6RRDDLGMSP1R(Lcom/google/common/primitives/Floats;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 0

    .prologue
    .line 38219
    return-object p0
.end method

.method public static provideImageCaptureStateTracker$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUKRKC5Q6AL3IC5HMMQBECT4MQOB7CL1M2S3KELP6AGRFDLMM2RJ47CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPF95MM2PR58DGN0T3LE9IL6T31EHIL8SJ1CDLMASHR(Lcom/google/common/primitives/Floats;)Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker;
    .locals 0

    .prologue
    .line 38226
    return-object p0
.end method

.method public static provideImageCopier$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BRLEHKMOBQEC5Q6ITJ5B5ALCNPK68O5UE1O714MQOB7CL1MUS39CLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLMM2RJ1CTIMQPBEEGNNAT39DGNKIRB1CTIK6RRGD5IN4EO_(Lcom/google/android/libraries/smartburst/training/MetadataSerializer;)Lcom/google/android/libraries/smartburst/training/MetadataSerializer;
    .locals 0

    .prologue
    .line 35011
    return-object p0
.end method

.method public static provideImageFilter(Lcom/android/camera/processing/imagebackend/MostRecentImageFilter;)Lcom/android/camera/processing/imagebackend/ImageFilter;
    .locals 0

    .prologue
    .line 44048
    return-object p0
.end method

.method public static provideImageReaderFactory(Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;)Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;
    .locals 0

    .prologue
    .line 11100
    return-object p0
.end method

.method public static provideLargeFrameAllocator(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;
    .locals 1

    .prologue
    .line 27108
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    invoke-interface {p0, v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;->createAllocator([Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    move-result-object v0

    return-object v0
.end method

.method public static provideLargeRawStreamConfig(Ljava/util/Set;Ljava/util/Set;Landroid/view/Surface;Landroid/view/Surface;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;",
            ">;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30057
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 30059
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;

    .line 30060
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30065
    :cond_0
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30066
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30067
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 30068
    invoke-interface {p0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 30070
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 30071
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 31078
    :cond_1
    const/4 v3, 0x1

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;->of(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;

    move-result-object v0

    .line 30072
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 32074
    :cond_2
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;->of(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;

    move-result-object v0

    .line 30074
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 30078
    :cond_3
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static provideLayoutConfig(Lcom/android/camera/util/layout/ActivityLayoutManager;)Lcom/google/android/apps/camera/async/UiObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/layout/ActivityLayoutManager;",
            ")",
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50142
    invoke-interface {p0}, Lcom/android/camera/util/layout/ActivityLayoutManager;->activityLayout()Lcom/google/android/apps/camera/async/UiObservable;

    move-result-object v0

    return-object v0
.end method

.method public static provideLifetime(Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown;)Lcom/google/android/apps/camera/async/Lifetime;
    .locals 0

    .prologue
    .line 38043
    return-object p0
.end method

.method public static provideLocationProvider(Lcom/android/camera/location/LocationProviderImpl;Lcom/android/camera/util/lifecycle/AppLifecycle;Lcom/google/android/apps/camera/async/MainThread;)Lcom/android/camera/location/LocationProvider;
    .locals 0

    .prologue
    .line 19016
    invoke-static {p2, p1, p0}, Lcom/android/camera/util/lifecycle/Lifecycles;->addObserverOnMainThread$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQDC5KMSL38E9IM2P1R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHKMCPB3F5HMOP9F85O70J39CPIM6UB3DHIJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UR39C9P62SJ9CLPIUSRKD5Q66Q1FDHKMCPB3F5HMOP9F9HKMCPB3F5HMOPAFC9PMASJMCLP3MAAM(Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/util/lifecycle/AppLifecycle;Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V

    .line 19017
    return-object p0
.end method

.method public static provideMediaRecorderExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 11064
    const-string v0, "MediaRecorderExecutor"

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Futures2;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static provideMediaRecorderFactory(Lcom/android/camera/camcorder/media/MediaRecorderFactoryImpl;)Lcom/android/camera/camcorder/media/MediaRecorderFactory;
    .locals 0

    .prologue
    .line 11107
    return-object p0
.end method

.method public static provideMegaPixelFormat()Ljava/text/NumberFormat;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 50111
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 50112
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 50113
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 50114
    return-object v0
.end method

.method public static provideModuleManager(Landroid/content/Context;Lcom/android/camera/module/ModuleManager$ModuleAgent;Lcom/android/camera/module/ModuleManager$ModuleAgent;Lcom/android/camera/module/ModuleManager$ModuleAgent;Lcom/android/camera/module/ModuleManager$ModuleAgent;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/camera/one/OneCameraManager;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/debug/trace/Trace;)Lcom/android/camera/module/ModuleManager;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;",
            "Lcom/android/camera/one/OneCameraManager;",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            "Lcom/android/camera/debug/trace/Trace;",
            ")",
            "Lcom/android/camera/module/ModuleManager;"
        }
    .end annotation

    .prologue
    .line 19060
    const-string v0, "ModuleManager#provide"

    invoke-interface {p11, v0}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 19061
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19063
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19064
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19065
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19066
    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19068
    const-string v0, "ModuleManager#lightcycle"

    invoke-interface {p11, v0}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 19072
    invoke-virtual {p10}, Lcom/google/android/apps/camera/inject/app/AndroidServices;->provideSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    .line 19073
    invoke-virtual {p10}, Lcom/google/android/apps/camera/inject/app/AndroidServices;->provideActivityManager()Landroid/app/ActivityManager;

    move-result-object v2

    .line 19070
    invoke-static {p0, v0, v2}, Lcom/android/camera/util/PhotoSphereHelper;->hasLightCycleCapture(Landroid/content/Context;Landroid/hardware/SensorManager;Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19074
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ModuleManager$ModuleAgent;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19075
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ModuleManager$ModuleAgent;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19077
    :cond_0
    invoke-interface {p11}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 19079
    const-string v0, "ModuleManager#refocus"

    invoke-interface {p11, v0}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 19081
    invoke-virtual {p10}, Lcom/google/android/apps/camera/inject/app/AndroidServices;->provideActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->hasRefocusCapture(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19082
    invoke-interface {p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ModuleManager$ModuleAgent;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19084
    :cond_1
    invoke-interface {p11}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 19086
    const-string v0, "ModuleManager#hfr-video"

    invoke-interface {p11, v0}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 19088
    invoke-interface {p9}, Lcom/android/camera/one/OneCameraManager;->isHfrSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19089
    invoke-interface {p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ModuleManager$ModuleAgent;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19091
    :cond_2
    invoke-interface {p11}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 19093
    new-instance v0, Lcom/android/camera/module/ModuleManagerImpl;

    invoke-direct {v0, v1}, Lcom/android/camera/module/ModuleManagerImpl;-><init>(Ljava/lang/Iterable;)V

    .line 19094
    invoke-interface {p1}, Lcom/android/camera/module/ModuleManager$ModuleAgent;->moduleConfig$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMQRR4ELM6ABQDDTI7AR359LGMSOB7CLP28JBFCHQMOPA3DTN6CQB77C______()Lcom/android/camera/ui/DetailsDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/DetailsDialog;->getModuleId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/module/ModuleManager;->setDefaultModuleIndex(I)Z

    .line 19096
    invoke-interface {p11}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 19097
    return-object v0
.end method

.method public static provideOneCameraOpener(Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;)Lcom/android/camera/one/OneCameraOpener;
    .locals 0

    .prologue
    .line 25026
    return-object p0
.end method

.method public static provideOneCameraProvider$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50N0S23DTMN0RRECLN78EP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC5362ORKDTP7IK3IDTR6IP35E8TG____(Lcom/android/camera/one/v2/OneCameraFactoryProvider;)Lcom/android/camera/one/v2/OneCameraFactoryProvider;
    .locals 0

    .prologue
    .line 25021
    return-object p0
.end method

.method public static provideOrientationManager$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T6M2QBEAHK74PB1CGTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE9LGMSOB7CLP4IRBGDGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTBKD5M2UR31F5NNAT1F9TP6IPBEEHGN8QBFDP6M2RJ1CTIN4EO_(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/util/layout/OrientationManagerImpl;)Lcom/android/camera/burst/OrientationLockController;
    .locals 0

    .prologue
    .line 50156
    invoke-static {p1, p0, p2}, Lcom/android/camera/util/lifecycle/Lifecycles;->addObserverOnMainThread$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQDC5KMSL38E9IM2P1R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FDHKM4SJ1E9KMASPFEDQ6IT33D0NMOQB6CLHNIORCCKNKOQB6CLHNIORCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TIILG_(Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V

    .line 50157
    return-object p2
.end method

.method public static providePanoramaAgent$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUJBFCHQMOPADC5N62PR5E8I4QRR4ELM6AGRFDPJ6IPPR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355T6MUP3LDHIKQOBEC5JMASH49LNM8TBCCL0MEPBEEGTG____(Lcom/android/camera/ui/DetailsDialog;Ljavax/inject/Provider;)Lcom/android/camera/module/ModuleManager$ModuleAgent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/DetailsDialog;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;>;)",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;"
        }
    .end annotation

    .prologue
    .line 23048
    new-instance v0, Lcom/android/camera/module/SimpleModuleAgent;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/SimpleModuleAgent;-><init>(Lcom/android/camera/ui/DetailsDialog;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providePanoramaConfig$51662RJ4E9NMIP1FCDNMST35DPQ2USJ5ECNL4PBJDTQN4OR5ECTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURBFCHQMOP9F9LNM8TBCCL6M2RJ1CTIN492DDTI7AR358DNMSPJ9CSTG____(Landroid/content/res/Resources;)Lcom/android/camera/ui/DetailsDialog;
    .locals 4

    .prologue
    .line 23037
    const v0, 0x7f0f0015

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 23038
    const-string v1, "PanoramaModule"

    .line 23039
    new-instance v2, Lcom/android/camera/ui/DetailsDialog;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/android/camera/ui/DetailsDialog;-><init>(ILjava/lang/String;Z)V

    return-object v2
.end method

.method public static providePanoramaMode(Lcom/android/camera/module/photosphere/InjectedPanoramaMode;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/photosphere/InjectedPanoramaMode;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23030
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static providePersistentInputSurfaceFactory(Lcom/android/camera/util/ApiHelper;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/camera/camcorder/media/PersistentInputSurfaceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/ApiHelper;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules$ReprocessingConfigModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/ImageSaverModules$JpegImageSaverModule;",
            ">;)",
            "Lcom/android/camera/camcorder/media/PersistentInputSurfaceFactory;"
        }
    .end annotation

    .prologue
    .line 11073
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isMOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11074
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/media/PersistentInputSurfaceFactory;

    .line 11076
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/media/PersistentInputSurfaceFactory;

    goto :goto_0
.end method

.method public static providePhotoAgent$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUJBFCHQMOPADC5N62PR5E8I4QRR4ELM6AGRFDPJ6IPPR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355T6MUP3LDHIKQOBEC5JMASH49LNM8TBCCL0MEPBEEGTG____(Lcom/android/camera/ui/DetailsDialog;Ljavax/inject/Provider;)Lcom/android/camera/module/ModuleManager$ModuleAgent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/DetailsDialog;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;>;)",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;"
        }
    .end annotation

    .prologue
    .line 20063
    new-instance v0, Lcom/android/camera/module/SimpleModuleAgent;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/SimpleModuleAgent;-><init>(Lcom/android/camera/ui/DetailsDialog;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providePhotoConfig$51662RJ4E9NMIP1FCDNMST35DPQ2USJ5ECNL4PBJDTQN4OR5ECTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURBFCHQMOP9F9LNM8TBCCL6M2RJ1CTIN492DDTI7AR358DNMSPJ9CSTG____(Landroid/content/res/Resources;)Lcom/android/camera/ui/DetailsDialog;
    .locals 3

    .prologue
    .line 20044
    const v0, 0x7f0f0011

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 20045
    const-string v1, "PhotoModule"

    .line 20046
    new-instance v2, Lcom/android/camera/ui/DetailsDialog;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/ui/DetailsDialog;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public static providePhotoIntentAgent$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUJBFCHQMOPADC5N62PR5E8I4QRR4ELM6AGRFDPJ6IPPR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355T6MUP3LDHIKQOBEC5JMASH49LNM8TBCCL0MEPBEEGTG____(Lcom/android/camera/ui/DetailsDialog;Ljavax/inject/Provider;)Lcom/android/camera/module/ModuleManager$ModuleAgent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/DetailsDialog;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;>;)",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;"
        }
    .end annotation

    .prologue
    .line 20089
    new-instance v0, Lcom/android/camera/module/SimpleModuleAgent;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/SimpleModuleAgent;-><init>(Lcom/android/camera/ui/DetailsDialog;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providePhotoIntentConfig$51662RJ4E9NMIP1FCDNMST35DPQ2USJ5ECNL4PBJDTQN4OR5ECTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURBFCHQMOP9F9LNM8TBCCL6M2RJ1CTIN492DDTI7AR358DNMSPJ9CSTG____(Landroid/content/res/Resources;)Lcom/android/camera/ui/DetailsDialog;
    .locals 3

    .prologue
    .line 20078
    const v0, 0x7f0f0018

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 20079
    const-string v1, "PhotoModule"

    .line 20080
    new-instance v2, Lcom/android/camera/ui/DetailsDialog;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/ui/DetailsDialog;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public static providePhotoIntentMode(Lcom/android/camera/module/imageintent/InjectedImageIntentModule;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/imageintent/InjectedImageIntentModule;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20071
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static providePhotoMode(Lcom/android/camera/module/capture/CaptureModule;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/capture/CaptureModule;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20037
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static providePhotoSphereAgent$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUJBFCHQMOPADC5N62PR5E8I4QRR4ELM6AGRFDPJ6IPPR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355T6MUP3LDHIKQOBEC5JMASH49LNM8TBCCL0MEPBEEGTG____(Lcom/android/camera/ui/DetailsDialog;Ljavax/inject/Provider;)Lcom/android/camera/module/ModuleManager$ModuleAgent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/DetailsDialog;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;>;)",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;"
        }
    .end annotation

    .prologue
    .line 24048
    new-instance v0, Lcom/android/camera/module/SimpleModuleAgent;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/SimpleModuleAgent;-><init>(Lcom/android/camera/ui/DetailsDialog;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providePhotoSphereConfig$51662RJ4E9NMIP1FCDNMST35DPQ2USJ5ECNL4PBJDTQN4OR5ECTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURBFCHQMOP9F9LNM8TBCCL6M2RJ1CTIN492DDTI7AR358DNMSPJ9CSTG____(Landroid/content/res/Resources;)Lcom/android/camera/ui/DetailsDialog;
    .locals 4

    .prologue
    .line 24037
    const v0, 0x7f0f0014

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 24038
    const-string v1, "PanoramaModule"

    .line 24039
    new-instance v2, Lcom/android/camera/ui/DetailsDialog;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/android/camera/ui/DetailsDialog;-><init>(ILjava/lang/String;Z)V

    return-object v2
.end method

.method public static providePhotoSphereMode(Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/photosphere/InjectedPhotoSphereMode;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24030
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static providePictureTaker(Lcom/android/camera/one/v2/photo/legacy/SimpleImageCaptureCommand;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 3

    .prologue
    .line 43030
    new-instance v0, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;-><init>(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;IZ)V

    return-object v0
.end method

.method public static providePrewarmTimeout(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/apps/camera/async/Timeout;
    .locals 5

    .prologue
    .line 44029
    new-instance v0, Lcom/google/android/apps/camera/async/Timeout;

    new-instance v1, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/Timeout;-><init>(Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;)V

    return-object v0
.end method

.method public static provideRawFrameAllocator(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;
    .locals 1

    .prologue
    .line 27115
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    invoke-interface {p0, v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;->createAllocator([Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    move-result-object v0

    return-object v0
.end method

.method public static provideRefocusAgent$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUJBFCHQMOPADC5N62PR5E8I4QRR4ELM6AGRFDPJ6IPPR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355T6MUP3LDHIKQOBEC5JMASH49LNM8TBCCL0MEPBEEGTG____(Lcom/android/camera/ui/DetailsDialog;Ljavax/inject/Provider;)Lcom/android/camera/module/ModuleManager$ModuleAgent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/DetailsDialog;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;>;)",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;"
        }
    .end annotation

    .prologue
    .line 22048
    new-instance v0, Lcom/android/camera/module/SimpleModuleAgent;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/SimpleModuleAgent;-><init>(Lcom/android/camera/ui/DetailsDialog;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideRefocusConfig$51662RJ4E9NMIP1FCDNMST35DPQ2USJ5ECNL4PBJDTQN4OR5ECTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURBFCHQMOP9F9LNM8TBCCL6M2RJ1CTIN492DDTI7AR358DNMSPJ9CSTG____(Landroid/content/res/Resources;)Lcom/android/camera/ui/DetailsDialog;
    .locals 4

    .prologue
    .line 22037
    const v0, 0x7f0f0013

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 22038
    const-string v1, "RefocusModule"

    .line 22039
    new-instance v2, Lcom/android/camera/ui/DetailsDialog;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/android/camera/ui/DetailsDialog;-><init>(ILjava/lang/String;Z)V

    return-object v2
.end method

.method public static provideRefocusMode(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/refocus/RefocusModule;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22030
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static provideRemoteShutterListener(Landroid/content/Context;Lcom/android/camera/util/lifetime/ActivityLifetime;)Lcom/android/camera/remote/RemoteShutterListener;
    .locals 2

    .prologue
    .line 8027
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->create(Landroid/content/Context;)Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    .line 8029
    invoke-interface {p1}, Lcom/android/camera/util/lifetime/ActivityLifetime;->getInstanceLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 8030
    return-object v0
.end method

.method public static provideReprocessingSession(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/core/FrameRequestProcessor;",
            ">;)",
            "Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;"
        }
    .end annotation

    .prologue
    .line 27014
    new-instance v0, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors;

    new-instance v1, Lcom/google/android/libraries/smartburst/concurrency/Results;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/smartburst/concurrency/Results;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors;-><init>(Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;)V

    return-object v0
.end method

.method public static provideShotFailureHandler(Lcom/android/camera/error/ShotFailureHandlerImpl;)Lcom/android/camera/error/ShotFailureHandler;
    .locals 0

    .prologue
    .line 18028
    return-object p0
.end method

.method public static provideSoftwareAsyncImageSaver(Ljava/util/concurrent/Executor;)Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;
    .locals 2

    .prologue
    .line 35065
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;-><init>(ILjava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static provideSoftwareJpegEncoderExecutable()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 35058
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static provideStateTrackingImageCaptureCommand$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUGBLEHNKCR31EDK4GP3IA1M7ASQ9DLGMEPA3C5O78TBICL1MURBDC5N68HJ1CDQ6USJP7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUKR9DPJMOPA6DHGN6Q23DTMMQOBECH362ORKDTP7IEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TO6GRRKDSNM6RRDDLGMSP3J5T96ASRKE9KM6T35CH17ASJJEHD76R23DTMMQOBECH362ORKDTP7IEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TO6GRRKDSNM6RRDDLGMSP3J5T96ASRKE9KM6T35CH17ASJJEH1MURBDC5N68HJ1CDQ6USJP7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFCDNMQRB1DPI76BQJEHGN8PAKE9GM6QR9DPJKIRB1CTIK6OBGEHQN4PA3DTMMQOBECGTG____(Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusImageCaptureCommandFactory;Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory;Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;Lcom/google/common/primitives/Booleans;)Lcom/google/common/primitives/Floats;
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 38240
    invoke-virtual {p1}, Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory;->create()Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v0

    .line 38243
    invoke-virtual {p3, v2, v3}, Lcom/google/common/primitives/Booleans;->create(II)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v1

    .line 38242
    invoke-virtual {p2, v2, v3, v1}, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;->create(IILcom/android/camera/one/v2/photo/ImageCaptureCommand;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v1

    .line 38244
    new-instance v2, Lcom/google/common/primitives/Floats;

    .line 38245
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusImageCaptureCommandFactory;->create(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/common/primitives/Floats;-><init>(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)V

    .line 38244
    return-object v2
.end method

.method public static provideStorageDialogBuilder(Lcom/android/camera/storage/StorageDialogBuilderImpl;)Lcom/android/camera/storage/StorageDialogBuilder;
    .locals 0

    .prologue
    .line 49014
    return-object p0
.end method

.method public static provideSystemProperties()Lcom/android/camera/util/SystemProperties;
    .locals 1

    .prologue
    .line 50110
    invoke-static {}, Lcom/android/camera/util/SystemProperties;->instance()Lcom/android/camera/util/SystemProperties;

    move-result-object v0

    return-object v0
.end method

.method public static provideThumbnailer$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BRKD1QMQOJEC5KMOBQ9DLGMEPA2C5HMMPBECHA6GTBDC9N62QBCCLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NN8Q3LDLH6SOB9DGNL8Q3LDLH6SOB9DHIN4EO_(Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;)Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;
    .locals 0

    .prologue
    .line 38011
    return-object p0
.end method

.method public static provideUiControllerInitializer(Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer;)Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;
    .locals 0

    .prologue
    .line 49025
    return-object p0
.end method

.method public static provideVariableFpsRangeChooser$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5THM2RB5E9GIULJ1E9KM2OJCCL370SQIC5N6EPA3D1NMUSR5E94MQS3C7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NM6OBDCLP62BQMC5P6IOB2DHIKCS3JA9GMSPR58DK6URRJCLP3M___(Lcom/android/camera/camcorder/camera/VariableFpsRangeChooser;)Lcom/android/camera/camcorder/camera/VariableFpsRangeChooser;
    .locals 0

    .prologue
    .line 11114
    return-object p0
.end method

.method public static provideVideoSwipeHintStatechart$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLD4NNCQB4CLNN6TR9E1IMGQBEEGNLCQB4CLNL6TR9E1IKGQBEEH9N8OBKCLHMGOBIEGTG____(Lcom/google/android/apps/camera/async/Observable;)Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable;",
            ")",
            "Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;"
        }
    .end annotation

    .prologue
    .line 50034
    new-instance v0, Lcom/google/android/apps/camera/async/DelayedExecutor;

    const-string v1, "DelHintRelease"

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/camera/async/DelayedExecutor;-><init>(Ljava/lang/String;I)V

    .line 50035
    new-instance v1, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/ui/videoswipehint/GeneratedVideoSwipeHintStatechart;-><init>(Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/DelayedExecutor;)V

    return-object v1
.end method

.method public static provideVideoSwipeHintUi$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRMD5I6ARRJETKN0PB8D5N78BQMD5I6ARQJETKN0PA8D5N78LB995MN0R1R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRMD5I6ARRJETKN0PB8D5N78BQMD5I6ARQJETKN0PA8D5N78LB97C______(Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;)Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUi;
    .locals 0

    .prologue
    .line 50036
    return-object p0
.end method

.method public static provideVideoTorchInitializer$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHFAPKM8PBFAHNN4OR8ADQ62T35CDK62SJK7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNKQOB9DPA6GSJ5C5I3MJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T874RRGCLP78U9R9HGMSP3IDTKM8BR3DTN78PBEEGNN4PBJ5T96ASRFELP66PBJ7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAQ9FCDNMST3IDTM6OPBI5TKMSQBKD5GMOQBQCLP76BQMD5I6ARQKDTP66Q2JEHGN8PB3D1GN4T29DPKN8QB1DHKNKPBI7C______(Lcom/android/camera/ui/controller/VideoTorchStatechart;Ljavax/inject/Provider;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/async/Observable;Landroid/content/res/Resources;)Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/controller/VideoTorchStatechart;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Landroid/content/res/Resources;",
            ")",
            "Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;"
        }
    .end annotation

    .prologue
    .line 49058
    new-instance v0, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;-><init>(Lcom/android/camera/ui/controller/VideoTorchStatechart;Ljavax/inject/Provider;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/async/Observable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static provideViewfinder(Lcom/android/camera/ui/viewfinder/ViewfinderImpl;)Lcom/android/camera/ui/viewfinder/Viewfinder;
    .locals 0

    .prologue
    .line 50040
    return-object p0
.end method

.method public static provideViewfinderSizeSelector$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUQBED9IM6T1FC5O70BQ1DPI74RR9CH9MASJMD5HMASPR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLD4NNCQB5ETJ6IRJ4CLP2ULJ9CLRMCQBECHIN4KR9F9IL6PBCCLHN8RRI7C______(Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 50037
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 50038
    invoke-virtual {p0}, Lcom/google/android/apps/camera/inject/app/AndroidServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 50039
    new-instance v1, Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    new-instance v2, Lcom/android/camera/util/Size;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3, v0}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-direct {v1, v2, p1}, Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;-><init>(Lcom/android/camera/util/Size;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)V

    return-object v1
.end method

.method public static provideVolumeKeyController$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIJMJ31DPI74RR9CGNM6RREEHIMST1FE9IN6BQICLPMUTBICDIN6EQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQDC5KMSL38E9IM2P1R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR8C5P68TR1E9IMMPBPCDNMST3IDTM6OPBI5TR6UR3LDLIMMPBPCDNMST3IDTM6OPBI5TB6UR3LDLIKMPBP8DNMST3IDTM6OPBI7C______(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Landroid/content/res/Resources;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/MainThread;)Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
            "Landroid/content/res/Resources;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ")",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;"
        }
    .end annotation

    .prologue
    .line 50025
    new-instance v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;-><init>(Landroid/content/res/Resources;Lcom/google/android/apps/camera/async/Observable;)V

    .line 50026
    invoke-static {p3, p0, v0}, Lcom/android/camera/util/lifecycle/Lifecycles;->addObserverOnMainThread$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQDC5KMSL38E9IM2P1R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FDHKM4SJ1E9KMASPFEDQ6IT33D0NMOQB6CLHNIORCCKNKOQB6CLHNIORCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TIILG_(Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V

    .line 50027
    return-object v0
.end method

.method public static provideWindowManager(Lcom/google/android/apps/camera/inject/activity/ActivityServices;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 50206
    invoke-virtual {p0}, Lcom/google/android/apps/camera/inject/activity/ActivityServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method public static provideZoomParameter(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26032
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, p0}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forDynamicParameter(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static readBoolean(Ljava/io/DataInputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50590
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public static readByteBuffer(Ljava/io/DataInputStream;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50599
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 50600
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 50602
    if-eqz v0, :cond_0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 50604
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 50605
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 50604
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 50603
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 50607
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 50608
    return-object v0
.end method

.method public static readByteBufferList(Ljava/io/DataInputStream;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50749
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readInt(Ljava/io/DataInputStream;)I

    move-result v1

    .line 50750
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 50751
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 50752
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readByteBuffer(Ljava/io/DataInputStream;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50751
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50754
    :cond_0
    return-object v2
.end method

.method public static readFace(Ljava/io/DataInputStream;)Lcom/google/android/vision/face/Face;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50693
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readPointF(Ljava/io/DataInputStream;)Landroid/graphics/PointF;

    move-result-object v1

    .line 50694
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readFloat(Ljava/io/DataInputStream;)F

    move-result v2

    .line 50695
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readFloat(Ljava/io/DataInputStream;)F

    move-result v3

    .line 50696
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readPointFArray(Ljava/io/DataInputStream;)[Landroid/graphics/PointF;

    move-result-object v4

    .line 50697
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readFloat(Ljava/io/DataInputStream;)F

    move-result v5

    .line 50698
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readFloat(Ljava/io/DataInputStream;)F

    move-result v6

    .line 50699
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readFloat(Ljava/io/DataInputStream;)F

    move-result v7

    .line 50700
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readLandmarkArray(Ljava/io/DataInputStream;)[Lcom/google/android/vision/face/Landmark;

    move-result-object v8

    .line 50701
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readInt(Ljava/io/DataInputStream;)I

    move-result v9

    .line 50702
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readInt(Ljava/io/DataInputStream;)I

    move-result v10

    .line 50703
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readFloat(Ljava/io/DataInputStream;)F

    move-result v11

    .line 50704
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readFloat(Ljava/io/DataInputStream;)F

    move-result v12

    .line 50705
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readFloat(Ljava/io/DataInputStream;)F

    move-result v13

    .line 50707
    new-instance v0, Lcom/google/android/vision/face/Face;

    invoke-direct/range {v0 .. v13}, Lcom/google/android/vision/face/Face;-><init>(Landroid/graphics/PointF;FF[Landroid/graphics/PointF;FFF[Lcom/google/android/vision/face/Landmark;IIFFF)V

    return-object v0
.end method

.method public static readFaceList(Ljava/io/DataInputStream;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vision/face/Face;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50762
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readInt(Ljava/io/DataInputStream;)I

    move-result v1

    .line 50763
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 50764
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 50765
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readFace(Ljava/io/DataInputStream;)Lcom/google/android/vision/face/Face;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50764
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50767
    :cond_0
    return-object v2
.end method

.method public static readFloat(Ljava/io/DataInputStream;)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50583
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public static readFloatArray(Ljava/io/DataInputStream;)Lcom/google/android/libraries/smartburst/utils/FloatArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50777
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readInt(Ljava/io/DataInputStream;)I

    move-result v1

    .line 50778
    new-instance v2, Lcom/google/android/libraries/smartburst/utils/FloatArray;

    invoke-direct {v2, v1}, Lcom/google/android/libraries/smartburst/utils/FloatArray;-><init>(I)V

    .line 50779
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 50780
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readFloat(Ljava/io/DataInputStream;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->add(F)V

    .line 50779
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50782
    :cond_0
    return-object v2
.end method

.method public static readHomographyTransform(Ljava/io/DataInputStream;)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x9

    .line 50654
    new-array v1, v3, [F

    .line 50655
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 50656
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readFloat(Ljava/io/DataInputStream;)F

    move-result v2

    aput v2, v1, v0

    .line 50655
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50658
    :cond_0
    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->createHomographyTransform([F)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v0

    return-object v0
.end method

.method public static readInt(Ljava/io/DataInputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50584
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public static readLandmark(Ljava/io/DataInputStream;)Lcom/google/android/vision/face/Landmark;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50713
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readPointF(Ljava/io/DataInputStream;)Landroid/graphics/PointF;

    move-result-object v0

    .line 50714
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readInt(Ljava/io/DataInputStream;)I

    move-result v1

    .line 50715
    new-instance v2, Lcom/google/android/vision/face/Landmark;

    invoke-direct {v2, v0, v1}, Lcom/google/android/vision/face/Landmark;-><init>(Landroid/graphics/PointF;I)V

    return-object v2
.end method

.method public static readLandmarkArray(Ljava/io/DataInputStream;)[Lcom/google/android/vision/face/Landmark;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50723
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readInt(Ljava/io/DataInputStream;)I

    move-result v1

    .line 50724
    new-array v2, v1, [Lcom/google/android/vision/face/Landmark;

    .line 50725
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 50726
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readLandmark(Ljava/io/DataInputStream;)Lcom/google/android/vision/face/Landmark;

    move-result-object v3

    aput-object v3, v2, v0

    .line 50725
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50728
    :cond_0
    return-object v2
.end method

.method public static readLong(Ljava/io/DataInputStream;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50587
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static readMetadata(Ljava/io/DataInputStream;)Lcom/google/android/libraries/smartburst/storage/Metadata;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50794
    new-instance v1, Lcom/google/android/libraries/smartburst/storage/Metadata;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/storage/Metadata;-><init>()V

    .line 50795
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readInt(Ljava/io/DataInputStream;)I

    move-result v2

    .line 50796
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 50797
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 50798
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/storage/Metadata;->getKeyForName(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    move-result-object v3

    .line 50799
    invoke-virtual {v3, p0}, Lcom/google/android/libraries/smartburst/storage/Metadata$Key;->deserializeValue(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    .line 50796
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50801
    :cond_0
    return-object v1
.end method

.method public static readPointF(Ljava/io/DataInputStream;)Landroid/graphics/PointF;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50616
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readFloat(Ljava/io/DataInputStream;)F

    move-result v0

    .line 50617
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readFloat(Ljava/io/DataInputStream;)F

    move-result v1

    .line 50618
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public static readPointFArray(Ljava/io/DataInputStream;)[Landroid/graphics/PointF;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50736
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readInt(Ljava/io/DataInputStream;)I

    move-result v1

    .line 50737
    new-array v2, v1, [Landroid/graphics/PointF;

    .line 50738
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 50739
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readPointF(Ljava/io/DataInputStream;)Landroid/graphics/PointF;

    move-result-object v3

    aput-object v3, v2, v0

    .line 50738
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50741
    :cond_0
    return-object v2
.end method

.method public static readRectF(Ljava/io/DataInputStream;)Landroid/graphics/RectF;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50632
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readFloat(Ljava/io/DataInputStream;)F

    move-result v0

    .line 50633
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readFloat(Ljava/io/DataInputStream;)F

    move-result v1

    .line 50634
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readFloat(Ljava/io/DataInputStream;)F

    move-result v2

    .line 50635
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readFloat(Ljava/io/DataInputStream;)F

    move-result v3

    .line 50636
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method public static readSize(Ljava/io/DataInputStream;)Lcom/google/android/libraries/smartburst/utils/Size;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50644
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readInt(Ljava/io/DataInputStream;)I

    move-result v0

    .line 50645
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readInt(Ljava/io/DataInputStream;)I

    move-result v1

    .line 50646
    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/utils/Size;->of(II)Lcom/google/android/libraries/smartburst/utils/Size;

    move-result-object v0

    return-object v0
.end method

.method private static readString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50591
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static recursiveDelete(Ljava/io/File;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50959
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->clearDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    .line 50960
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 50959
    goto :goto_0

    :cond_2
    move v0, v1

    .line 50960
    goto :goto_1
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 50303
    if-nez p0, :cond_0

    .line 50304
    const/4 v0, 0x0

    .line 50308
    :goto_0
    return-object v0

    .line 50306
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 50307
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 50308
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static sanitizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0xc8

    .line 51167
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 51169
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[...]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 51171
    :cond_0
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveAndFinish(Lcom/android/camera/session/SessionBase;Ljava/io/InputStream;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/session/SessionBase;",
            "Ljava/io/InputStream;",
            "III",
            "Lcom/android/camera/exif/ExifInterface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 47069
    new-instance v0, Lcom/android/camera/session/MediaInfo;

    new-instance v1, Lcom/android/camera/util/Size;

    invoke-direct {v1, p2, p3}, Lcom/android/camera/util/Size;-><init>(II)V

    sget-object v2, Lcom/android/camera/storage/MimeType;->JPEG:Lcom/android/camera/storage/MimeType;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/session/MediaInfo;-><init>(Lcom/android/camera/util/Size;Lcom/android/camera/storage/MimeType;)V

    .line 47071
    invoke-virtual {v0, p5}, Lcom/android/camera/session/MediaInfo;->setExif(Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/session/MediaInfo;

    move-result-object v0

    .line 47072
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/session/MediaInfo;->setOrientation(Ljava/lang/Integer;)Lcom/android/camera/session/MediaInfo;

    move-result-object v0

    .line 47073
    invoke-interface {p0, p1, v0}, Lcom/android/camera/session/SessionBase;->saveAndFinish(Ljava/io/InputStream;Lcom/android/camera/session/MediaInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static saveAndFinish(Lcom/android/camera/session/SessionBase;[BIIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/session/SessionBase;",
            "[BIII",
            "Lcom/android/camera/exif/ExifInterface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47044
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->saveAndFinish(Lcom/android/camera/session/SessionBase;Ljava/io/InputStream;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static saveToFile([BLjava/lang/String;)Z
    .locals 1

    .prologue
    .line 50316
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 50317
    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 50318
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50322
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 50320
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static secondsToMicrosLong(F)J
    .locals 2

    .prologue
    .line 50283
    const v0, 0x49742400    # 1000000.0f

    mul-float/2addr v0, p0

    float-to-long v0, v0

    return-wide v0
.end method

.method public static secondsToMillis(I)I
    .locals 1

    .prologue
    .line 50284
    mul-int/lit16 v0, p0, 0x3e8

    return v0
.end method

.method public static secondsToMillis(J)J
    .locals 2

    .prologue
    .line 50286
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public static secondsToMillisLong(I)J
    .locals 2

    .prologue
    .line 50285
    const-wide/32 v0, 0x1d4c0

    return-wide v0
.end method

.method public static secondsToNanos(J)J
    .locals 2

    .prologue
    .line 50282
    const-wide v0, 0xb2d05e00L

    return-wide v0
.end method

.method public static secondsToNanosLong(I)J
    .locals 2

    .prologue
    .line 50281
    const-wide/32 v0, 0x3b9aca00

    return-wide v0
.end method

.method public static serialize(Lcom/adobe/xmp/impl/XMPMetaImpl;Ljava/io/OutputStream;Lcom/adobe/xmp/options/SerializeOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 7042
    if-eqz p2, :cond_1

    .line 7045
    :goto_0
    invoke-virtual {p2}, Lcom/adobe/xmp/options/SerializeOptions;->getSort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7047
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->sort()V

    .line 7049
    :cond_0
    new-instance v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serialize(Lcom/adobe/xmp/XMPMeta;Ljava/io/OutputStream;Lcom/adobe/xmp/options/SerializeOptions;)V

    .line 7050
    return-void

    .line 7042
    :cond_1
    new-instance p2, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {p2}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    goto :goto_0
.end method

.method public static serializeStore(Lcom/google/android/libraries/smartburst/storage/MetadataStore;Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50545
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50547
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/storage/MetadataStore;->getAllRecords()Ljava/util/List;

    move-result-object v0

    .line 50548
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50549
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/storage/Metadata;

    .line 50550
    invoke-static {v0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->writeMetadata(Lcom/google/android/libraries/smartburst/storage/Metadata;Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 50552
    :cond_0
    return-void
.end method

.method public static serializeStoreToDirectory(Lcom/google/android/libraries/smartburst/storage/MetadataStore;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 50573
    new-instance v0, Ljava/io/File;

    const-string v1, "metadatastore.bin"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50574
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    .line 50575
    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->bufferedFileOutputStream(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 50574
    const/4 v1, 0x0

    .line 50576
    :try_start_1
    invoke-static {p0, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->serializeStore(Lcom/google/android/libraries/smartburst/storage/MetadataStore;Ljava/io/DataOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50577
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 50580
    return-void

    .line 50574
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50577
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_0
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    .line 50578
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not save MetadataStore"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 50577
    :catch_2
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0
.end method

.method public static serializeToBuffer(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/options/SerializeOptions;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 7098
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 7099
    invoke-static {p0, v0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->serialize(Lcom/adobe/xmp/impl/XMPMetaImpl;Ljava/io/OutputStream;Lcom/adobe/xmp/options/SerializeOptions;)V

    .line 7100
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static setAndAnnounceNewButtonDescription(Landroid/view/View;Landroid/content/res/Resources;I)V
    .locals 4

    .prologue
    .line 50123
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50124
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 50125
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50127
    if-eqz v1, :cond_0

    .line 50128
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 50129
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50136
    :cond_0
    :goto_0
    return-void

    .line 50133
    :cond_1
    const v1, 0x7f0a01b9

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 50134
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50135
    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static setDefaults(Lcom/android/camera/settings/SettingsManager;Landroid/content/Context;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/camcorder/CamcorderManager;)V
    .locals 9

    .prologue
    const v4, 0x7f100010

    const v8, 0x7f100006

    const v7, 0x7f0a02a1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 47104
    const-string v0, "pref_camera_countdown_duration_key"

    .line 47107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 47104
    invoke-virtual {p0, v0, v6, v1}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;I[I)V

    .line 47109
    const-string v0, "pref_camera_id_key"

    const v1, 0x7f0a0295

    .line 47111
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 47109
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 47114
    const-string v0, "pref_camera_scenemode_key"

    const v1, 0x7f0a02b3

    .line 47116
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 47114
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 47119
    const-string v0, "pref_camera_flashmode_key"

    const v1, 0x7f0a02ad

    .line 47121
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 47119
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 47124
    const-string v0, "pref_hdr_support_mode_back_camera"

    const v1, 0x7f0a02a9

    .line 47126
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 47124
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 47129
    const-string v0, "pref_camera_hdr_key"

    invoke-virtual {p0, v0, v6}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Z)V

    .line 47130
    const-string v0, "pref_camera_selfie_flashmode_key"

    invoke-virtual {p0, v0, v6}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Z)V

    .line 47133
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {p2, v0}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/google/android/apps/camera/device/CameraId;

    move-result-object v0

    .line 47134
    if-eqz v0, :cond_2

    .line 47135
    invoke-interface {p2, v0}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoHdrPlusSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47136
    const-string v1, "pref_camera_hdr_plus_key"

    const v2, 0x7f0a02b7

    .line 47138
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 47139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 47136
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 47147
    :goto_0
    const-string v1, "pref_camera_first_use_hint_shown_key"

    invoke-virtual {p0, v1, v5}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Z)V

    .line 47149
    const-string v1, "pref_camera_focusmode_key"

    const v2, 0x7f0a02ac

    .line 47151
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 47152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 47149
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 47155
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47157
    if-eqz v0, :cond_3

    .line 47160
    invoke-interface {p3, v0}, Lcom/android/camera/camcorder/CamcorderManager;->getCamcorderCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 47161
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47162
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/CamcorderCharacteristics;

    sget-object v2, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_30:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    sget-object v3, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_2160P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/camcorder/CamcorderCharacteristics;->isVideoResolutionSupported(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47170
    :goto_1
    const-string v1, "pref_video_quality_back_key"

    .line 47173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 47170
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 47174
    const-string v0, "default_scope"

    const-string v1, "pref_video_quality_back_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47175
    const-string v0, "default_scope"

    const-string v1, "pref_video_quality_back_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 47179
    :cond_0
    const-string v0, "pref_video_quality_front_key"

    .line 47181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 47179
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 47183
    const-string v0, "default_scope"

    const-string v1, "pref_video_quality_front_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47184
    const-string v0, "default_scope"

    const-string v1, "pref_video_quality_front_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 47188
    :cond_1
    const-string v0, "pref_video_stabilization_key"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Z)V

    .line 47191
    const-string v0, "pref_video_encoding_key"

    .line 47193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 47191
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 47196
    const-string v0, "pref_camera_jpegquality_key"

    const v1, 0x7f0a02be

    .line 47198
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 47196
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 47201
    const-string v0, "pref_camera_video_flashmode_key"

    const v1, 0x7f0a02b0

    .line 47203
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 47201
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 47206
    const-string v0, "pref_video_effect_key"

    const v1, 0x7f0a02bb

    .line 47208
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 47206
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 47211
    const-string v0, "pref_video_first_use_hint_shown_key"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Z)V

    .line 47213
    const-string v0, "camera.startup_module"

    .line 47214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 47213
    invoke-virtual {p0, v0, v6, v1}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;I[I)V

    .line 47216
    const-string v0, "pref_camera_module_last_used_index"

    .line 47218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 47219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 47216
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;I[I)V

    .line 47221
    const-string v0, "pref_camera_pano_orientation"

    const v1, 0x7f0a02c3

    .line 47223
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47224
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 47221
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 47226
    const-string v0, "pref_camera_grid_lines"

    invoke-virtual {p0, v0, v6}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Z)V

    .line 47228
    const-string v0, "pref_camera_grid_lines_mode"

    sget-object v1, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Mode;->OFF:Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Mode;

    .line 47229
    invoke-virtual {v1}, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Mode;->getIndex()I

    move-result v1

    invoke-static {}, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Mode;->allModes()[I

    move-result-object v2

    .line 47228
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;I[I)V

    .line 47231
    const-string v0, "pref_should_show_refocus_viewer_cling"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Z)V

    .line 47233
    const-string v0, "pref_should_show_settings_button_cling"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Z)V

    .line 47235
    const-string v0, "pref_camera_dirty_lens_key"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Z)V

    .line 47237
    const-string v0, "pref_auto_generate_artifacts"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Z)V

    .line 47238
    return-void

    .line 47141
    :cond_2
    const-string v1, "pref_camera_hdr_plus_key"

    const v2, 0x7f0a02b6

    .line 47143
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 47144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 47141
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public static shouldSampleCurrentFrame(JJI)Z
    .locals 2

    .prologue
    .line 10016
    if-eqz p4, :cond_0

    int-to-long v0, p4

    add-long/2addr v0, p2

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static solidCircleDrawable(I)Landroid/graphics/drawable/ShapeDrawable;
    .locals 3

    .prologue
    .line 50199
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 50200
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 50201
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 50202
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50203
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 50204
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50205
    return-object v1
.end method

.method public static switchSystemUiToLightsOut(Landroid/view/Window;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 50290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 50297
    :goto_0
    return-void

    .line 50294
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 50295
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 50296
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 51007
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 51008
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 51009
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 51010
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 51011
    :goto_1
    if-ge v0, v1, :cond_1

    .line 51012
    aget-char v3, v2, v0

    .line 51013
    invoke-static {v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51014
    xor-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 51011
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51017
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    .line 51020
    :cond_2
    return-object p0

    .line 51008
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static tryGetNext(Lcom/google/android/apps/camera/async/BufferQueue;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/apps/camera/async/BufferQueue",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 50181
    invoke-interface {p0}, Lcom/google/android/apps/camera/async/BufferQueue;->tryGetNext()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static unionTimestamps(Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/Summary;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<*>;",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50873
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/media/Summary;->getTimestamps()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 50874
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/media/Summary;->getTimestamps()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 50875
    return-object v0
.end method

.method public static unitRatio(JJF)F
    .locals 2

    .prologue
    .line 50029
    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    .line 50030
    const/4 v0, 0x0

    .line 50033
    :goto_0
    return v0

    :cond_0
    sub-long v0, p0, p2

    long-to-float v0, v0

    div-float/2addr v0, p4

    goto :goto_0
.end method

.method public static writeBitmapAsJpeg(Ljava/io/File;Landroid/graphics/Bitmap;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 50949
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50950
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50951
    const/4 v1, 0x0

    .line 50953
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->bufferedFileOutputStream(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v1

    .line 50954
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50956
    invoke-static {v1, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 50957
    return-void

    .line 50956
    :catchall_0
    move-exception v0

    invoke-static {v1, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v0
.end method

.method public static writeBoolean(Ljava/lang/Boolean;Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50588
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 50589
    return-void
.end method

.method public static writeByteBuffer(Ljava/nio/ByteBuffer;Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50592
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 50593
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50594
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 50595
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50596
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    .line 50598
    :cond_0
    return-void
.end method

.method public static writeByteBufferList(Ljava/util/List;Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/io/DataOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50742
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 50747
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50743
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 50744
    invoke-static {v0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->writeByteBuffer(Ljava/nio/ByteBuffer;Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 50746
    :cond_0
    return-void
.end method

.method public static writeFace(Lcom/google/android/vision/face/Face;Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50659
    invoke-virtual {p0}, Lcom/google/android/vision/face/Face;->getPosition()Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->writePointF(Landroid/graphics/PointF;Ljava/io/DataOutputStream;)V

    .line 50660
    invoke-virtual {p0}, Lcom/google/android/vision/face/Face;->getWidth()F

    move-result v0

    .line 50673
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50661
    invoke-virtual {p0}, Lcom/google/android/vision/face/Face;->getHeight()F

    move-result v0

    .line 50675
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50662
    invoke-virtual {p0}, Lcom/google/android/vision/face/Face;->getVisualizationPolygon()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->writePointFList(Ljava/util/List;Ljava/io/DataOutputStream;)V

    .line 50663
    invoke-virtual {p0}, Lcom/google/android/vision/face/Face;->getYawDegrees()F

    move-result v0

    .line 50677
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50664
    invoke-virtual {p0}, Lcom/google/android/vision/face/Face;->getRollDegrees()F

    move-result v0

    .line 50679
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50665
    invoke-virtual {p0}, Lcom/google/android/vision/face/Face;->getConfidence()F

    move-result v0

    .line 50681
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50666
    invoke-virtual {p0}, Lcom/google/android/vision/face/Face;->getLandmarks()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->writeLandmarkList(Ljava/util/List;Ljava/io/DataOutputStream;)V

    .line 50667
    invoke-virtual {p0}, Lcom/google/android/vision/face/Face;->getTrackId()I

    move-result v0

    .line 50683
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50668
    invoke-virtual {p0}, Lcom/google/android/vision/face/Face;->getFrameNumber()I

    move-result v0

    .line 50685
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50669
    invoke-virtual {p0}, Lcom/google/android/vision/face/Face;->getIsLeftEyeOpenScore()F

    move-result v0

    .line 50687
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50670
    invoke-virtual {p0}, Lcom/google/android/vision/face/Face;->getIsRightEyeOpenScore()F

    move-result v0

    .line 50689
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50671
    invoke-virtual {p0}, Lcom/google/android/vision/face/Face;->getIsSmilingScore()F

    move-result v0

    .line 50691
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50672
    return-void
.end method

.method public static writeFaceList(Ljava/util/List;Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vision/face/Face;",
            ">;",
            "Ljava/io/DataOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50755
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 50760
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50756
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/Face;

    .line 50757
    invoke-static {v0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->writeFace(Lcom/google/android/vision/face/Face;Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 50759
    :cond_0
    return-void
.end method

.method public static writeFloat(FLjava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50581
    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50582
    return-void
.end method

.method public static writeFloatArray(Lcom/google/android/libraries/smartburst/utils/FloatArray;Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50768
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->size()I

    move-result v0

    .line 50773
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50769
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 50775
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_0

    .line 50772
    :cond_0
    return-void
.end method

.method public static writeHomographyTransform(Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50647
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->toArray()[F

    move-result-object v1

    .line 50648
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    .line 50649
    aget v2, v1, v0

    .line 50652
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50648
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50651
    :cond_0
    return-void
.end method

.method public static writeLandmark(Lcom/google/android/vision/face/Landmark;Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50708
    invoke-virtual {p0}, Lcom/google/android/vision/face/Landmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->writePointF(Landroid/graphics/PointF;Ljava/io/DataOutputStream;)V

    .line 50709
    invoke-virtual {p0}, Lcom/google/android/vision/face/Landmark;->getCategory()I

    move-result v0

    .line 50711
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50710
    return-void
.end method

.method public static writeLandmarkList(Ljava/util/List;Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vision/face/Landmark;",
            ">;",
            "Ljava/io/DataOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50716
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 50721
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50717
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/Landmark;

    .line 50718
    invoke-static {v0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->writeLandmark(Lcom/google/android/vision/face/Landmark;Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 50720
    :cond_0
    return-void
.end method

.method public static writeLong(Ljava/lang/Long;Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50585
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 50586
    return-void
.end method

.method public static writeMetadata(Lcom/google/android/libraries/smartburst/storage/Metadata;Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50783
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/storage/Metadata;->getAssignedKeys()Ljava/util/Set;

    move-result-object v0

    .line 50784
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 50790
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50785
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 50786
    iget-object v2, v0, Lcom/google/android/libraries/smartburst/storage/Metadata$Key;->name:Ljava/lang/String;

    .line 50792
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 50787
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/storage/Metadata;->getValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/google/android/libraries/smartburst/storage/Metadata$Key;->serializeValue(Ljava/lang/Object;Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 50789
    :cond_0
    return-void
.end method

.method public static writePointF(Landroid/graphics/PointF;Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50609
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 50612
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50610
    iget v0, p0, Landroid/graphics/PointF;->y:F

    .line 50614
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50611
    return-void
.end method

.method public static writePointFList(Ljava/util/List;Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/io/DataOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50729
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 50734
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50730
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 50731
    invoke-static {v0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->writePointF(Landroid/graphics/PointF;Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 50733
    :cond_0
    return-void
.end method

.method public static writeRectF(Landroid/graphics/RectF;Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50619
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 50624
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50620
    iget v0, p0, Landroid/graphics/RectF;->top:F

    .line 50626
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50621
    iget v0, p0, Landroid/graphics/RectF;->right:F

    .line 50628
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50622
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 50630
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50623
    return-void
.end method

.method public static writeSize(Lcom/google/android/libraries/smartburst/utils/Size;Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50637
    iget v0, p0, Lcom/google/android/libraries/smartburst/utils/Size;->width:I

    .line 50640
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50638
    iget v0, p0, Lcom/google/android/libraries/smartburst/utils/Size;->height:I

    .line 50642
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50639
    return-void
.end method

.method public static zzC(Landroid/os/Parcel;I)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 50345
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static zzD(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 50378
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method public static zzD(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50346
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int v1, v3, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static zzE(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50347
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method private static zzH(Landroid/os/Parcel;I)I
    .locals 1

    .prologue
    .line 50351
    const/high16 v0, -0x10000

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    return v0
.end method

.method private static zzI(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 50352
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int v1, v0, p1

    add-int/lit8 v2, p1, -0x4

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static zzJ(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 50354
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;I)I
    .locals 2

    .prologue
    const/high16 v1, -0x10000

    .line 50326
    and-int v0, p1, v1

    if-eq v0, v1, :cond_0

    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    goto :goto_0
.end method

.method public static zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 50341
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method private static zza([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 50403
    add-int/lit8 v0, p1, 0x4

    array-length v1, p0

    if-lt v0, v1, :cond_0

    const-string v0, "<bottom of call stack>"

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p1, 0x4

    aget-object v0, p0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static zza(Landroid/os/Parcel;IB)V
    .locals 1

    .prologue
    .line 50356
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;ID)V
    .locals 2

    .prologue
    .line 50362
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;IF)V
    .locals 1

    .prologue
    .line 50361
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.method private static zza(Landroid/os/Parcel;II)V
    .locals 4

    .prologue
    .line 50328
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;I)I

    move-result v0

    if-eq v0, p2, :cond_0

    new-instance v1, Lcom/bumptech/glide/Registry$MissingComponentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/bumptech/glide/Registry$MissingComponentException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_0
    return-void
.end method

.method public static zza(Landroid/os/Parcel;IJ)V
    .locals 2

    .prologue
    .line 50360
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V
    .locals 1

    .prologue
    .line 50366
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzH(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzI(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
    .locals 1

    .prologue
    .line 50364
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzH(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzI(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
    .locals 1

    .prologue
    .line 50365
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzH(Landroid/os/Parcel;I)I

    move-result v0

    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzI(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static zza(Landroid/os/Parcel;ILjava/lang/Integer;Z)V
    .locals 1

    .prologue
    .line 50359
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static zza(Landroid/os/Parcel;ILjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 50363
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzH(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzI(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static zza(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 50370
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzH(Landroid/os/Parcel;I)I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-static {p0, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzI(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static zza(Landroid/os/Parcel;IS)V
    .locals 2

    .prologue
    .line 50357
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;IZ)V
    .locals 1

    .prologue
    .line 50355
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzb(Landroid/os/Parcel;II)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zza(Landroid/os/Parcel;I[BZ)V
    .locals 1

    .prologue
    .line 50367
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzH(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-static {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzI(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static zza(Landroid/os/Parcel;I[IZ)V
    .locals 1

    .prologue
    .line 50368
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzH(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-static {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzI(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static zza(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I[TT;IZ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 50372
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzH(Landroid/os/Parcel;I)I

    move-result v2

    array-length v3, p2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, p2, v0

    if-nez v4, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0, v4, p3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_2

    :cond_2
    invoke-static {p0, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzI(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static zza(Landroid/os/Parcel;I[Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 50369
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzH(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzI(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private static zza(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    .line 50374
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v0, v2, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method private static zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 50406
    if-eqz p1, :cond_8

    instance-of v0, p1, Lcom/google/android/gms/internal/zzain;

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz p0, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzkn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " <\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    move v3, v1

    :goto_0
    if-ge v3, v7, :cond_5

    aget-object v0, v6, v3

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "cachedSize"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    and-int/lit8 v9, v2, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    and-int/lit8 v2, v2, 0x8

    const/16 v9, 0x8

    if-eq v2, v9, :cond_1

    const-string v2, "_"

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "_"

    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_2

    invoke-static {v8, v9, p2, p3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    if-nez v9, :cond_3

    move v0, v1

    :goto_2
    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_1

    invoke-static {v9, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8, v10, p2, p3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-static {v9}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-static {v8, v9, p2, p3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v6, v3

    move v2, v1

    :goto_4
    if-ge v2, v6, :cond_7

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "set"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "has"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "get"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v0, p2, p3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    :cond_6
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_7
    if-eqz p0, :cond_8

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    :goto_6
    return-void

    :cond_9
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzkn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzbW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_7
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_a
    instance-of v0, p1, [B

    if-eqz v0, :cond_b

    check-cast p1, [B

    invoke-static {p1, p3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza([BLjava/lang/StringBuffer;)V

    goto :goto_7

    :cond_b
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_5
.end method

.method public static zza(ZLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 50383
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static zza([BLjava/lang/StringBuffer;)V
    .locals 7

    .prologue
    const/16 v6, 0x5c

    const/4 v1, 0x0

    const/16 v5, 0x22

    .line 50410
    if-nez p0, :cond_0

    const-string v0, "\"\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_4

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_2

    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0x20

    if-lt v2, v3, :cond_3

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_3

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    const-string v3, "\\%03o"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static zza$51662RJ4E9NMIP1FDTPIUK31E9HMAR1R954KIAAM(Landroid/os/Parcel;II)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 50329
    if-eq p1, v3, :cond_0

    new-instance v0, Lcom/bumptech/glide/Registry$MissingComponentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/Registry$MissingComponentException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static zzaA(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50400
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzh(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzad(Z)V
    .locals 1

    .prologue
    .line 50382
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public static zzae(Z)V
    .locals 1

    .prologue
    .line 50385
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public static zzax(Landroid/content/Context;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    .line 50391
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzsq()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 50381
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method public static zzb(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50376
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    const v1, 0x7f0a0033

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzb(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a0018

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v1, 0x7f0a0017

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const v1, 0x7f0a001b

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const v1, 0x7f0a0021

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const v1, 0x7f0a001e

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    const v1, 0x7f0a0027

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    const v1, 0x7f0a002a

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_a
    const v1, 0x7f0a002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_1
        0x5 -> :sswitch_7
        0x7 -> :sswitch_6
        0x9 -> :sswitch_5
        0x10 -> :sswitch_8
        0x11 -> :sswitch_9
        0x12 -> :sswitch_2
        0x14 -> :sswitch_a
        0x2a -> :sswitch_4
    .end sparse-switch
.end method

.method public static zzb(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 50327
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method private static zzb(Landroid/os/Parcel;II)V
    .locals 1

    .prologue
    .line 50350
    const v0, 0xffff

    if-lt p2, v0, :cond_0

    const/high16 v0, -0x10000

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void

    :cond_0
    shl-int/lit8 v0, p2, 0x10

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static zzb(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 50371
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x7

    invoke-static {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzH(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    invoke-static {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzI(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static zzb(ZLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 50384
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static zzb(Landroid/content/res/Resources;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50389
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x3

    if-le v0, v3, :cond_4

    move v0, v1

    :goto_1
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzsi()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzc(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public static zzb(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 50348
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method private static zzbW(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xc8

    .line 50408
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[...]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzcR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzbc(Landroid/os/Parcel;)I
    .locals 1

    .prologue
    .line 50324
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public static zzbd(Landroid/os/Parcel;)I
    .locals 5

    .prologue
    .line 50330
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzbc(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzdr(I)I

    move-result v3

    const/16 v4, 0x4f45

    if-eq v3, v4, :cond_0

    new-instance v1, Lcom/bumptech/glide/Registry$MissingComponentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected object header. Got 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/bumptech/glide/Registry$MissingComponentException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_0
    add-int v0, v2, v1

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v1, Lcom/bumptech/glide/Registry$MissingComponentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Size read is invalid start="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/bumptech/glide/Registry$MissingComponentException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_2
    return v0
.end method

.method public static zzbe(Landroid/os/Parcel;)I
    .locals 1

    .prologue
    .line 50353
    const/16 v0, 0x4f45

    invoke-static {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzH(Landroid/os/Parcel;I)I

    move-result v0

    return v0
.end method

.method public static zzc(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50349
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static zzc(Landroid/os/Parcel;II)V
    .locals 1

    .prologue
    .line 50358
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static zzc(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 50373
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzH(Landroid/os/Parcel;I)I

    move-result v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-static {p0, v0, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_2

    :cond_2
    invoke-static {p0, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzI(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private static zzc(Landroid/content/res/Resources;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 50390
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzsk()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static zzc(Landroid/os/Parcel;I)Z
    .locals 1

    .prologue
    .line 50331
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzcC(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50386
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static zzcL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50379
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given String is empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method private static zzcR(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 50409
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-lt v4, v5, :cond_0

    const/16 v5, 0x7e

    if-gt v4, v5, :cond_0

    const/16 v5, 0x22

    if-eq v4, v5, :cond_0

    const/16 v5, 0x27

    if-eq v4, v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v5, "\\u%04x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static zzdE(I)Z
    .locals 1

    .prologue
    .line 50399
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzdr(I)I
    .locals 1

    .prologue
    .line 50325
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static zze(Landroid/os/Parcel;I)B
    .locals 1

    .prologue
    .line 50332
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static zzf(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 50375
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sparse-switch p1, :sswitch_data_0

    const-string v1, "GoogleApiAvailability"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected error code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :sswitch_0
    return-object v0

    :sswitch_1
    const v0, 0x7f0a0016

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0a001a

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0a0020

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0a001d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    const-string v0, "GoogleApiAvailability"

    const-string v2, "Google Play services is invalid. Cannot recover."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0026

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    const-string v0, "GoogleApiAvailability"

    const-string v2, "Network error occurred. Please retry request later."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0022

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    const-string v1, "GoogleApiAvailability"

    const-string v2, "Internal error occurred. Please see logs for detailed information"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_8
    const-string v1, "GoogleApiAvailability"

    const-string v2, "Developer error occurred. Please see logs for detailed information"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_9
    const-string v0, "GoogleApiAvailability"

    const-string v2, "An invalid account was specified when connecting. Please provide a valid account."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0024

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_a
    const-string v1, "GoogleApiAvailability"

    const-string v2, "The application is not licensed to the user."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_b
    const-string v1, "GoogleApiAvailability"

    const-string v2, "One of the API components you attempted to connect to is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_c
    const-string v0, "GoogleApiAvailability"

    const-string v2, "The specified account could not be signed in."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a002b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_d
    const-string v0, "GoogleApiAvailability"

    const-string v2, "The current user profile is restricted and could not use authenticated features."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a002d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_9
        0x6 -> :sswitch_0
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_5
        0xa -> :sswitch_8
        0xb -> :sswitch_a
        0x10 -> :sswitch_b
        0x11 -> :sswitch_c
        0x12 -> :sswitch_3
        0x14 -> :sswitch_d
        0x2a -> :sswitch_4
    .end sparse-switch
.end method

.method public static zzf(Lcom/google/android/gms/internal/zzain;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzain;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 50405
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1, p0, v2, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error printing proto: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error printing proto: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static zzf(Landroid/os/Parcel;I)S
    .locals 1

    .prologue
    .line 50333
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public static zzg(Landroid/os/Parcel;I)I
    .locals 1

    .prologue
    .line 50334
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public static zzg(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50377
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static zzh(Landroid/os/Parcel;I)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 50335
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza$51662RJ4E9NMIP1FDTPIUK31E9HMAR1R954KIAAM(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static zzh(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 50401
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzi(Landroid/os/Parcel;I)J
    .locals 2

    .prologue
    .line 50336
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzi(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50380
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method public static zzii(I)Lcom/google/android/gms/common/api/Status;
    .locals 2

    .prologue
    .line 50411
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    .line 50412
    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    .line 50411
    :goto_0
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 50412
    :pswitch_0
    const-string v0, "TARGET_NODE_NOT_CONNECTED"

    goto :goto_0

    :pswitch_1
    const-string v0, "DUPLICATE_LISTENER"

    goto :goto_0

    :pswitch_2
    const-string v0, "UNKNOWN_LISTENER"

    goto :goto_0

    :pswitch_3
    const-string v0, "DATA_ITEM_TOO_LARGE"

    goto :goto_0

    :pswitch_4
    const-string v0, "INVALID_TARGET_NODE"

    goto :goto_0

    :pswitch_5
    const-string v0, "ASSET_UNAVAILABLE"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xfa0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static zzkh(Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 3

    .prologue
    .line 50413
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "wear"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static zzkn(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 50407
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzl(Landroid/os/Parcel;I)F
    .locals 1

    .prologue
    .line 50337
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    return v0
.end method

.method public static zzn(Landroid/os/Parcel;I)D
    .locals 2

    .prologue
    .line 50338
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static zzn(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50387
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static zzq(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 50339
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static zzr(Landroid/os/Parcel;I)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 50340
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static zzs(Landroid/os/Parcel;I)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 50342
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static zzsi()Z
    .locals 1

    .prologue
    .line 50392
    const/16 v0, 0xb

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzdE(I)Z

    move-result v0

    return v0
.end method

.method public static zzsk()Z
    .locals 1

    .prologue
    .line 50393
    const/16 v0, 0xd

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzdE(I)Z

    move-result v0

    return v0
.end method

.method public static zzsl()Z
    .locals 1

    .prologue
    .line 50394
    const/16 v0, 0xe

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzdE(I)Z

    move-result v0

    return v0
.end method

.method public static zzso()Z
    .locals 1

    .prologue
    .line 50395
    const/16 v0, 0x12

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzdE(I)Z

    move-result v0

    return v0
.end method

.method public static zzsp()Z
    .locals 1

    .prologue
    .line 50396
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzdE(I)Z

    move-result v0

    return v0
.end method

.method public static zzsq()Z
    .locals 1

    .prologue
    .line 50397
    const/16 v0, 0x14

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzdE(I)Z

    move-result v0

    return v0
.end method

.method public static zzsr()Z
    .locals 1

    .prologue
    .line 50398
    const/16 v0, 0x15

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzdE(I)Z

    move-result v0

    return v0
.end method

.method public static zzt(Landroid/os/Parcel;I)[B
    .locals 3

    .prologue
    .line 50343
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static zzw(Landroid/os/Parcel;I)[I
    .locals 3

    .prologue
    .line 50344
    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static zzy(II)Ljava/lang/String;
    .locals 6

    .prologue
    .line 50402
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v3, p1, 0x3

    const/4 v0, 0x3

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-static {v1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getScreenHeightDp(Landroid/content/res/Resources;)I
    .locals 1

    .prologue
    .line 3057
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperGingerbread;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public getScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 1

    .prologue
    .line 3062
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperGingerbread;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public getSmallestScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 2

    .prologue
    .line 3067
    .line 4038
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperGingerbread;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperGingerbread;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3067
    return v0
.end method
