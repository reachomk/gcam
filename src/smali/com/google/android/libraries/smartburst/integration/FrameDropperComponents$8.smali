.class final Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$8;
.super Ljava/lang/Object;
.source "FrameDropperComponents.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;->configureAUC$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNMIRJKCLJN4OBKD5NMSBQ3DTMN0RRECLN78HJ1CDQ6USJP7D662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7CKLC___(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/integration/Instantiator",
        "<",
        "Lcom/google/android/libraries/smartburst/selection/FrameDropper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 251
    .line 1254
    new-instance v1, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;

    const-class v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;

    .line 2085
    const-string v2, "default"

    invoke-virtual {p1, v0, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1254
    check-cast v0, Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    const/16 v2, 0xa

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/libraries/smartburst/selection/FixedFrameRateSavingFrameDropper;-><init>(Lcom/google/android/libraries/smartburst/selection/FrameDropper;II)V

    .line 251
    return-object v1
.end method
