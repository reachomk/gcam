.class Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;
.super Ljava/lang/Object;
.source "MotionStabilizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StabilizedTransform"
.end annotation


# instance fields
.field private mCompensationTransform:Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

.field private final mInterframeTransform:Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

.field private mJitterTransform:Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;J)V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->mInterframeTransform:Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    .line 322
    iput-wide p2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->mTimestamp:J

    .line 323
    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;J)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->mInterframeTransform:Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    .line 330
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->mJitterTransform:Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    .line 331
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->mCompensationTransform:Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    .line 332
    iput-wide p4, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->mTimestamp:J

    .line 333
    return-void
.end method


# virtual methods
.method getCompensationTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->mCompensationTransform:Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    return-object v0
.end method

.method getInterframeTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->mInterframeTransform:Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    return-object v0
.end method

.method getJitterTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->mJitterTransform:Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    return-object v0
.end method

.method getTimestamp()J
    .locals 2

    .prologue
    .line 350
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->mTimestamp:J

    return-wide v0
.end method

.method setCompensationTransform(Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->mCompensationTransform:Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    .line 359
    return-void
.end method

.method setJitterTransform(Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->mJitterTransform:Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    .line 355
    return-void
.end method
