.class final Lcom/android/camera/exif/ExifParser$ImageEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageEvent"
.end annotation


# instance fields
.field stripIndex:I

.field type:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 882
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/exif/ExifParser$ImageEvent;->stripIndex:I

    .line 883
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/exif/ExifParser$ImageEvent;->type:I

    .line 884
    return-void
.end method

.method constructor <init>(II)V
    .locals 1

    .prologue
    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/exif/ExifParser$ImageEvent;->type:I

    .line 888
    iput p2, p0, Lcom/android/camera/exif/ExifParser$ImageEvent;->stripIndex:I

    .line 889
    return-void
.end method
