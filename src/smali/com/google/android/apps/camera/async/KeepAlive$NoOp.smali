.class final Lcom/google/android/apps/camera/async/KeepAlive$NoOp;
.super Ljava/lang/Object;
.source "KeepAlive.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/async/KeepAlive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoOp"
.end annotation


# static fields
.field public static final NOOP:Lcom/google/android/apps/camera/async/SafeCloseable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/google/android/apps/camera/async/KeepAlive$NoOp;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/KeepAlive$NoOp;-><init>()V

    sput-object v0, Lcom/google/android/apps/camera/async/KeepAlive$NoOp;->NOOP:Lcom/google/android/apps/camera/async/SafeCloseable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method
