.class final Lcom/android/camera/hdrplus/HdrPlusState$4$1;
.super Ljava/lang/Object;
.source "HdrPlusState.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/hdrplus/HdrPlusState$4;->Run(ILcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$data:Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;


# direct methods
.method constructor <init>(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/camera/hdrplus/HdrPlusState$4$1;->val$data:Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusState$4$1;->val$data:Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;

    invoke-static {v0}, Lcom/google/googlex/gcam/GcamModule;->DeleteNativeArray(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;)V

    .line 163
    return-void
.end method
