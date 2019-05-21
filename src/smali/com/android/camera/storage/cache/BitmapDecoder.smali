.class public final Lcom/android/camera/storage/cache/BitmapDecoder;
.super Ljava/lang/Object;
.source "BitmapDecoder.java"

# interfaces
.implements Lcom/android/camera/storage/cache/Decoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/storage/cache/Decoder",
        "<",
        "Lcom/android/camera/storage/cache/OrientationBitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic decode(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    .line 1015
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1016
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1017
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 1018
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1019
    new-instance v2, Lcom/android/camera/storage/cache/OrientationBitmap;

    invoke-static {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->from(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/android/camera/storage/cache/OrientationBitmap;-><init>(Landroid/graphics/Bitmap;Lcom/google/android/apps/camera/util/layout/Orientation;)V

    .line 12
    return-object v2
.end method
