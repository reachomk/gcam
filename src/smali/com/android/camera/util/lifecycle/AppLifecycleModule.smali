.class public Lcom/android/camera/util/lifecycle/AppLifecycleModule;
.super Ljava/lang/Object;
.source "AppLifecycleModule.java"


# instance fields
.field private final appLifecycle:Lcom/android/camera/util/lifecycle/AppLifecycle;


# direct methods
.method public constructor <init>(Lcom/android/camera/util/lifecycle/AppLifecycle;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/camera/util/lifecycle/AppLifecycleModule;->appLifecycle:Lcom/android/camera/util/lifecycle/AppLifecycle;

    .line 12
    return-void
.end method


# virtual methods
.method public final provideAppLifecycle()Lcom/android/camera/util/lifecycle/AppLifecycle;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycleModule;->appLifecycle:Lcom/android/camera/util/lifecycle/AppLifecycle;

    return-object v0
.end method
