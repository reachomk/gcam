.class public final Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap;
.super Ljava/lang/Object;
.source "TypedThumbnailBitmap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap$ThumbnailType;
    }
.end annotation


# instance fields
.field public final bitmap:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Optional;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap;->bitmap:Lcom/google/common/base/Optional;

    .line 28
    return-void
.end method
