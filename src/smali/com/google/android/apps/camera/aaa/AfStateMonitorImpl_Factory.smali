.class public final Lcom/google/android/apps/camera/aaa/AfStateMonitorImpl_Factory;
.super Ljava/lang/Object;
.source "AfStateMonitorImpl_Factory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/android/apps/camera/aaa/AfStateMonitorImpl_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/google/android/apps/camera/aaa/AfStateMonitorImpl_Factory;

    invoke-direct {v0}, Lcom/google/android/apps/camera/aaa/AfStateMonitorImpl_Factory;-><init>()V

    sput-object v0, Lcom/google/android/apps/camera/aaa/AfStateMonitorImpl_Factory;->INSTANCE:Lcom/google/android/apps/camera/aaa/AfStateMonitorImpl_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/apps/camera/aaa/AfStateMonitorImpl_Factory;->INSTANCE:Lcom/google/android/apps/camera/aaa/AfStateMonitorImpl_Factory;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1012
    new-instance v0, Lcom/google/android/apps/camera/aaa/AfStateMonitor;

    invoke-direct {v0}, Lcom/google/android/apps/camera/aaa/AfStateMonitor;-><init>()V

    .line 6
    return-object v0
.end method
