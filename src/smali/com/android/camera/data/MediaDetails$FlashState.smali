.class public final Lcom/android/camera/data/MediaDetails$FlashState;
.super Ljava/lang/Object;
.source "MediaDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/MediaDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlashState"
.end annotation


# static fields
.field private static FLASH_FIRED_MASK:I


# instance fields
.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    sput v0, Lcom/android/camera/data/MediaDetails$FlashState;->FLASH_FIRED_MASK:I

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/android/camera/data/MediaDetails$FlashState;->state:I

    .line 60
    return-void
.end method


# virtual methods
.method public final isFlashFired()Z
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/android/camera/data/MediaDetails$FlashState;->state:I

    sget v1, Lcom/android/camera/data/MediaDetails$FlashState;->FLASH_FIRED_MASK:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
