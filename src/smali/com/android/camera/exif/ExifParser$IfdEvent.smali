.class final Lcom/android/camera/exif/ExifParser$IfdEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IfdEvent"
.end annotation


# instance fields
.field ifd:I

.field isRequested:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .prologue
    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 897
    iput p1, p0, Lcom/android/camera/exif/ExifParser$IfdEvent;->ifd:I

    .line 898
    iput-boolean p2, p0, Lcom/android/camera/exif/ExifParser$IfdEvent;->isRequested:Z

    .line 899
    return-void
.end method
