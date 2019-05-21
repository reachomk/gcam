.class public Lcom/android/camera/module/imageintent/event/EventPictureDecoded;
.super Ljava/lang/Object;
.source "EventPictureDecoded.java"


# instance fields
.field private final pictureBitmap:Landroid/graphics/Bitmap;

.field private final pictureData:[B


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;[B)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/camera/module/imageintent/event/EventPictureDecoded;->pictureBitmap:Landroid/graphics/Bitmap;

    .line 11
    iput-object p2, p0, Lcom/android/camera/module/imageintent/event/EventPictureDecoded;->pictureData:[B

    .line 12
    return-void
.end method


# virtual methods
.method public final getPictureBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/module/imageintent/event/EventPictureDecoded;->pictureBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getPictureData()[B
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/module/imageintent/event/EventPictureDecoded;->pictureData:[B

    return-object v0
.end method
