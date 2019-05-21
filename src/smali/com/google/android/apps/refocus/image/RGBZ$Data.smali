.class public final Lcom/google/android/apps/refocus/image/RGBZ$Data;
.super Ljava/lang/Object;
.source "RGBZ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/image/RGBZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public final exif:Lcom/android/camera/exif/ExifInterface;

.field public final fileData:[B


# direct methods
.method public constructor <init>([BLcom/android/camera/exif/ExifInterface;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/apps/refocus/image/RGBZ$Data;->fileData:[B

    .line 48
    iput-object p2, p0, Lcom/google/android/apps/refocus/image/RGBZ$Data;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 49
    return-void
.end method
