.class public Lcom/google/android/gms/googlehelp/internal/common/zzd;
.super Ljava/lang/Object;


# instance fields
.field public final callback:Lcom/android/camera/one/OneCamera$PictureCallback;

.field public final facing:Lcom/android/camera/one/OneCamera$Facing;

.field public final heading:I

.field public final orientation:I

.field public final saverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

.field public final timerSeconds:F

.field public final writeDng:Z

.field public final zoom:F


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/io/File;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$PictureSaverCallback;ILcom/android/camera/one/OneCamera$Facing;FFZ)V
    .locals 1

    .prologue
    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1104
    iput p2, p0, Lcom/google/android/gms/googlehelp/internal/common/zzd;->orientation:I

    .line 1106
    iput-object p4, p0, Lcom/google/android/gms/googlehelp/internal/common/zzd;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    .line 1107
    iput-object p5, p0, Lcom/google/android/gms/googlehelp/internal/common/zzd;->saverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .line 1108
    iput p6, p0, Lcom/google/android/gms/googlehelp/internal/common/zzd;->heading:I

    .line 1109
    iput-object p7, p0, Lcom/google/android/gms/googlehelp/internal/common/zzd;->facing:Lcom/android/camera/one/OneCamera$Facing;

    .line 1110
    iput p8, p0, Lcom/google/android/gms/googlehelp/internal/common/zzd;->zoom:F

    .line 1111
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/googlehelp/internal/common/zzd;->timerSeconds:F

    .line 1112
    iput-boolean p10, p0, Lcom/google/android/gms/googlehelp/internal/common/zzd;->writeDng:Z

    .line 1113
    return-void
.end method

.method public static zzs(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/google/android/gms/googlehelp/internal/common/zzd$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/googlehelp/internal/common/zzd$1;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const-string v0, "gH_Utils"

    const-string v1, "Taking screenshot failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static zzt(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    .line 1000
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "status_bar_height"

    const-string v6, "dimen"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 0
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v4, v3, v1, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "gH_Utils"

    const-string v3, "Get screenshot failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic zzv(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/googlehelp/internal/common/zzd;->zzt(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
