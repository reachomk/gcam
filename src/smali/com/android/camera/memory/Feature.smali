.class public final enum Lcom/android/camera/memory/Feature;
.super Ljava/lang/Enum;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/memory/Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/memory/Feature;

.field public static final enum HDR_PLUS:Lcom/android/camera/memory/Feature;

.field public static final enum LIGHTCYCLE_REFOCUS:Lcom/android/camera/memory/Feature;

.field private static enum NPF:Lcom/android/camera/memory/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/android/camera/memory/Feature;

    const-string v1, "HDR_PLUS"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/memory/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/memory/Feature;->HDR_PLUS:Lcom/android/camera/memory/Feature;

    .line 9
    new-instance v0, Lcom/android/camera/memory/Feature;

    const-string v1, "NPF"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/memory/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/memory/Feature;->NPF:Lcom/android/camera/memory/Feature;

    .line 10
    new-instance v0, Lcom/android/camera/memory/Feature;

    const-string v1, "LIGHTCYCLE_REFOCUS"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/memory/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/memory/Feature;->LIGHTCYCLE_REFOCUS:Lcom/android/camera/memory/Feature;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/memory/Feature;

    sget-object v1, Lcom/android/camera/memory/Feature;->HDR_PLUS:Lcom/android/camera/memory/Feature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/memory/Feature;->NPF:Lcom/android/camera/memory/Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/memory/Feature;->LIGHTCYCLE_REFOCUS:Lcom/android/camera/memory/Feature;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/memory/Feature;->$VALUES:[Lcom/android/camera/memory/Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/memory/Feature;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/android/camera/memory/Feature;->$VALUES:[Lcom/android/camera/memory/Feature;

    invoke-virtual {v0}, [Lcom/android/camera/memory/Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/memory/Feature;

    return-object v0
.end method
