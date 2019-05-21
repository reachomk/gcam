.class public final enum Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;
.super Ljava/lang/Enum;
.source "Convergence3ASpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Requirement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

.field public static final enum ANY:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

.field public static final enum CONVERGED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

.field public static final enum LOCKED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    const-string v1, "ANY"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->ANY:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    .line 17
    new-instance v0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    const-string v1, "LOCKED"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->LOCKED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    .line 24
    new-instance v0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    const-string v1, "CONVERGED"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->CONVERGED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    sget-object v1, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->ANY:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->LOCKED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->CONVERGED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->$VALUES:[Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

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

.method public static values()[Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->$VALUES:[Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    invoke-virtual {v0}, [Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    return-object v0
.end method
