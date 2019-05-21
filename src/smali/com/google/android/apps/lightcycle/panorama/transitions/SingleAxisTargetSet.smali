.class public final Lcom/google/android/apps/lightcycle/panorama/transitions/SingleAxisTargetSet;
.super Ljava/lang/Object;
.source "SingleAxisTargetSet.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/panorama/transitions/MockTargetSet;


# instance fields
.field private identityTransform:[F

.field private isHorizontal:Z

.field private targets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/transitions/SingleAxisTargetSet;->isHorizontal:Z

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/transitions/SingleAxisTargetSet;->targets:Ljava/util/ArrayList;

    .line 16
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/transitions/SingleAxisTargetSet;->identityTransform:[F

    .line 23
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/transitions/SingleAxisTargetSet;->isHorizontal:Z

    .line 24
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/transitions/SingleAxisTargetSet;->identityTransform:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 25
    return-void
.end method


# virtual methods
.method public final drawTargets$5135MHICCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BRCD5JMGT33F5HMOP9FE1GMSRRIC5MM2BQKC5P6EPBK9LGMSOB7CLP3MMQ6954IILG_(FLcom/google/android/apps/lightcycle/panorama/TargetManager;[FII)V
    .locals 10

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 35
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/panorama/transitions/SingleAxisTargetSet;->targets:Ljava/util/ArrayList;

    .line 1048
    if-eqz v8, :cond_1

    .line 1051
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1053
    const/high16 v0, 0x41a00000    # 20.0f

    mul-float v9, p1, v0

    .line 1055
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/transitions/SingleAxisTargetSet;->isHorizontal:Z

    if-eqz v0, :cond_0

    move v3, v5

    .line 1064
    :goto_0
    const/4 v0, -0x2

    move v7, v0

    move v6, v1

    :goto_1
    const/4 v0, 0x2

    if-gt v7, v0, :cond_1

    .line 1065
    if-eqz v7, :cond_3

    .line 1066
    int-to-float v0, v7

    mul-float v2, v9, v0

    .line 1067
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 1068
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1069
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1070
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v8, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v0, v2

    .line 1064
    :goto_2
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v6, v0

    goto :goto_1

    :cond_0
    move v3, v4

    move v4, v5

    .line 1060
    goto :goto_0

    .line 36
    :cond_1
    if-eqz p2, :cond_2

    .line 37
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/transitions/SingleAxisTargetSet;->identityTransform:[F

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/transitions/SingleAxisTargetSet;->targets:Ljava/util/ArrayList;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {p2, v0, v1, p3, v2}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->drawTargetSet([FLjava/util/ArrayList;[FF)V

    .line 39
    :cond_2
    return-void

    :cond_3
    move v0, v6

    goto :goto_2
.end method
