.class public final Lcom/android/camera/one/v2/common/FrameClock_Factory;
.super Ljava/lang/Object;
.source "FrameClock_Factory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final frameClockMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/common/FrameClock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/MembersInjector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/common/FrameClock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/camera/one/v2/common/FrameClock_Factory;->frameClockMembersInjector:Ldagger/MembersInjector;

    .line 15
    return-void
.end method

.method public static create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ldagger/MembersInjector;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/common/FrameClock;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/android/camera/one/v2/common/FrameClock_Factory;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/common/FrameClock_Factory;-><init>(Ldagger/MembersInjector;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1019
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock_Factory;->frameClockMembersInjector:Ldagger/MembersInjector;

    new-instance v1, Lcom/android/camera/one/v2/common/FrameClock;

    invoke-direct {v1}, Lcom/android/camera/one/v2/common/FrameClock;-><init>()V

    invoke-static {v0, v1}, Ldagger/internal/MembersInjectors;->injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/common/FrameClock;

    .line 8
    return-object v0
.end method
