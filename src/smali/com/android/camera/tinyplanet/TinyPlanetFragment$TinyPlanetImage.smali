.class final Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;
.super Ljava/lang/Object;
.source "TinyPlanetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/tinyplanet/TinyPlanetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TinyPlanetImage"
.end annotation


# instance fields
.field public final jpegData:[B

.field public final size:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;->jpegData:[B

    .line 114
    iput p2, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;->size:I

    .line 115
    return-void
.end method
