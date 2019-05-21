.class public Lcom/android/camera/module/imageintent/event/EventFastPictureBitmapAvailable;
.super Ljava/lang/Object;
.source "EventFastPictureBitmapAvailable.java"


# instance fields
.field private final thumbnailBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/camera/module/imageintent/event/EventFastPictureBitmapAvailable;->thumbnailBitmap:Landroid/graphics/Bitmap;

    .line 10
    return-void
.end method


# virtual methods
.method public final getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/module/imageintent/event/EventFastPictureBitmapAvailable;->thumbnailBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
