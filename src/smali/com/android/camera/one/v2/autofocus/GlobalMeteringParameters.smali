.class public final Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;
.super Ljava/lang/Object;
.source "GlobalMeteringParameters.java"

# interfaces
.implements Lcom/android/camera/one/v2/autofocus/MeteringParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters$Singleton;
    }
.end annotation


# static fields
.field private static final ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 11
    const/4 v0, 0x1

    new-array v6, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v0, v6, v1

    sput-object v6, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/camera/one/v2/autofocus/MeteringParameters;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters$Singleton;->access$000()Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getAERegions(Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object v0
.end method

.method public final getAFRegions(Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object v0
.end method
